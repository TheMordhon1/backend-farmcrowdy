package campaign

import (
	"strings"
	"time"
)

type CampaignFormatter struct {
	ID               int       `json:"id"`
	UserID           int       `json:"user_id"`
	Name             string    `json:"name"`
	Address          string    `json:"address"`
	ShortDescription string    `json:"short_description"`
	ImageURL         string    `json:"image_url"`
	GoalAmount       int       `json:"goal_amount"`
	MinPembayaran    int       `json:"min_pembayaran"`
	CurrentAmount    int       `json:"current_amount"`
	CreatedAt        time.Time `json:"created_at"`
	UpdatedAt        time.Time `json:"updated_at"`
	Slug             string    `json:"slug"`
}

func FormatCampaign(campaign Campaign) CampaignFormatter {
	campaignFormatter := CampaignFormatter{}
	campaignFormatter.ID = campaign.ID
	campaignFormatter.UserID = campaign.UserID
	campaignFormatter.Name = campaign.Name
	campaignFormatter.Address = campaign.Address
	campaignFormatter.ShortDescription = campaign.ShortDescription
	campaignFormatter.GoalAmount = campaign.GoalAmount
	campaignFormatter.MinPembayaran = campaign.MinPembayaran
	campaignFormatter.CurrentAmount = campaign.CurrentAmount
	campaignFormatter.CreatedAt = campaign.CreatedAt
	campaignFormatter.UpdatedAt = campaign.UpdatedAt
	campaignFormatter.Slug = campaign.Slug
	campaignFormatter.ImageURL = ""

	if len(campaign.CampaignImages) > 0 {
		campaignFormatter.ImageURL = campaign.CampaignImages[0].FileName
	}

	return campaignFormatter
}

func FormatCampaigns(campaigns []Campaign) []CampaignFormatter {
	campaignsFormatter := []CampaignFormatter{}

	for _, campaign := range campaigns {
		campaignFormatter := FormatCampaign(campaign)
		campaignsFormatter = append(campaignsFormatter, campaignFormatter)
	}

	return campaignsFormatter
}

type CampaignDetailFormatter struct {
	ID                      int                      `json:"id"`
	Name                    string                   `json:"name"`
	Address                 string                   `json:"address"`
	ShortDescription        string                   `json:"short_description"`
	DescriptionKomoditas    string                   `json:"description_komoditas"`
	DescriptionProspek      string                   `json:"description_prospek"`
	DescriptionRisiko       string                   `json:"description_risiko"`
	DescriptionKelompokTani string                   `json:"description_kelompok_tani"`
	ImageURL                string                   `json:"image_url"`
	GoalAmount              int                      `json:"goal_amount"`
	MinPembayaran           int                      `json:"min_pembayaran"`
	CurrentAmount           int                      `json:"current_amount"`
	BackerCount             int                      `json:"backer_count"`
	UserID                  int                      `json:"user_id"`
	Slug                    string                   `json:"slug"`
	Perks                   []string                 `json:"perks"`
	User                    CampaignUserFormatter    `json:"user"`
	Images                  []CampaignImageFormatter `json:"images"`
}

type CampaignUserFormatter struct {
	Name       string `json:"name"`
	Occupation string `json:"occupation"`
	ImageURL   string `json:"image_url"`
}

type CampaignImageFormatter struct {
	ImageURL  string `json:"image_url"`
	IsPrimary bool   `json:"is_primary"`
}

func FormatCampaignDetail(campaign Campaign) CampaignDetailFormatter {
	campaignDetailFormatter := CampaignDetailFormatter{}
	campaignDetailFormatter.ID = campaign.ID
	campaignDetailFormatter.Name = campaign.Name
	campaignDetailFormatter.Address = campaign.Address
	campaignDetailFormatter.ShortDescription = campaign.ShortDescription
	campaignDetailFormatter.DescriptionKomoditas = campaign.DescriptionKomoditas
	campaignDetailFormatter.DescriptionProspek = campaign.DescriptionProspek
	campaignDetailFormatter.DescriptionRisiko = campaign.DescriptionRisiko
	campaignDetailFormatter.DescriptionKelompokTani = campaign.DescriptionKelompokTani
	campaignDetailFormatter.GoalAmount = campaign.GoalAmount
	campaignDetailFormatter.MinPembayaran = campaign.MinPembayaran
	campaignDetailFormatter.CurrentAmount = campaign.CurrentAmount
	campaignDetailFormatter.BackerCount = campaign.BackerCount
	campaignDetailFormatter.UserID = campaign.UserID
	campaignDetailFormatter.Slug = campaign.Slug
	campaignDetailFormatter.ImageURL = ""

	if len(campaign.CampaignImages) > 0 {
		campaignDetailFormatter.ImageURL = campaign.CampaignImages[0].FileName
	}

	var perks []string

	for _, perk := range strings.Split(campaign.Perks, ",") {
		perks = append(perks, strings.TrimSpace(perk))
	}

	campaignDetailFormatter.Perks = perks

	user := campaign.User

	campaignUserFormatter := CampaignUserFormatter{}
	campaignUserFormatter.Name = user.Name
	campaignUserFormatter.Occupation = user.Occupation
	campaignUserFormatter.ImageURL = user.AvatarFileName

	campaignDetailFormatter.User = campaignUserFormatter

	images := []CampaignImageFormatter{}

	for _, image := range campaign.CampaignImages {
		campaignImageFormatter := CampaignImageFormatter{}
		campaignImageFormatter.ImageURL = image.FileName

		isPrimary := false

		if image.IsPrimary == 1 {
			isPrimary = true
		}
		campaignImageFormatter.IsPrimary = isPrimary

		images = append(images, campaignImageFormatter)
	}

	campaignDetailFormatter.Images = images

	return campaignDetailFormatter
}
