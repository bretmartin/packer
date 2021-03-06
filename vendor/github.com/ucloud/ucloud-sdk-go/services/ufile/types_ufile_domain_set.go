// Code is generated by ucloud-model, DO NOT EDIT IT.

package ufile

/*
UFileDomainSet - DescribeBucket

this model is auto created by ucloud code generater for open api,
you can also see https://docs.ucloud.cn/api for detail.
*/
type UFileDomainSet struct {

	// UCDN加速域名
	Cdn []string

	// 用户自定义CDN加速域名
	CustomCdn []string

	// 用户自定义源站域名
	CustomSrc []string

	// 源站域名
	Src []string
}
