package campaign

import "farmcrowdy_new/user"

type GetCampaignDetailInput struct {
	ID int `uri:"id" binding:"required"`
}

type CreateCampaignInput struct {
	Name                    string `json:"name" binding:"required"`
	Address                 string `json:"address" binding:"required"`
	ShortDescription        string `json:"short_description" binding:"required"`
	DescriptionKomoditas    string `json:"description_komoditas" binding:"required"`
	DescriptionProspek      string `json:"description_prospek" binding:"required"`
	DescriptionRisiko       string `json:"description_risiko" binding:"required"`
	DescriptionKelompokTani string `json:"description_kelompok_tani" binding:"required"`
	GoalAmount              int    `json:"goal_amount" binding:"required"`
	MinPembayaran           int    `json:"min_pembayaran" binding:"required"`
	Perks                   string `json:"perks" binding:"required"`
	User                    user.User
}

type CreateCampaignImageInput struct {
	CampaignID int  `form:"campaign_id" binding:"required"`
	IsPrimary  bool `form:"is_primary"`
	User       user.User
}

type FormCreateCampaignInput struct {
	Name                    string `form:"name" binding:"required"`
	Address                 string `form:"address" binding:"required"`
	ShortDescription        string `form:"short_description" binding:"required"`
	DescriptionKomoditas    string `form:"description_komoditas" binding:"required"`
	DescriptionProspek      string `form:"description_prospek" binding:"required"`
	DescriptionRisiko       string `form:"description_risiko" binding:"required"`
	DescriptionKelompokTani string `form:"description_kelompok_tani" binding:"required"`
	GoalAmount              int    `form:"goal_amount" binding:"required"`
	MinPembayaran           int    `form:"min_pembayaran" binding:"required"`
	Perks                   string `form:"perks" binding:"required"`
	UserID                  int    `form:"user_id" binding:"required"`
	Users                   []user.User
	Error                   error
}

type FormUpdateCampaignInput struct {
	ID                      int
	Name                    string `form:"name" binding:"required"`
	Address                 string `form:"address" binding:"required"`
	ShortDescription        string `form:"short_description" binding:"required"`
	DescriptionKomoditas    string `form:"description_komoditas" binding:"required"`
	DescriptionProspek      string `form:"description_prospek" binding:"required"`
	DescriptionRisiko       string `form:"description_risiko" binding:"required"`
	DescriptionKelompokTani string `form:"description_kelompok_tani" binding:"required"`
	GoalAmount              int    `form:"goal_amount" binding:"required"`
	MinPembayaran           int    `form:"min_pembayaran" binding:"required"`
	Perks                   string `form:"perks" binding:"required"`
	Error                   error
	User                    user.User
}
