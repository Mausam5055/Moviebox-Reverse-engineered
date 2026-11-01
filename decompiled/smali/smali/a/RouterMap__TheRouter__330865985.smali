.class public La/RouterMap__TheRouter__330865985;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/therouter/router/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final COUNT:Ljava/lang/String; = "1"

.field public static final ROUTERMAP0:Ljava/lang/String; = "[{\"path\":\"/profile/tv_download_web_link\",\"className\":\"com.transsion.usercenter.tvlink.TvDownloadWebLinkActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_center_labels_feedback\",\"className\":\"com.transsion.usercenter.setting.labelsfeedback.LabelsFeedbackActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_center_feedback\",\"className\":\"com.transsion.usercenter.setting.feedback.UserSettingFeedbackActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/watch_option\",\"className\":\"com.transsion.usercenter.setting.SettingWatchActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/setting_privacy_data\",\"className\":\"com.transsion.usercenter.setting.SettingPrivacyDataActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/setting_notice\",\"className\":\"com.transsion.usercenter.setting.SettingNoticeActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/setting\",\"className\":\"com.transsion.usercenter.setting.SettingActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/see\",\"className\":\"com.transsion.usercenter.profile.see.ProfileSeeActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_profile\",\"className\":\"com.transsion.usercenter.profile.UserProfileActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/qr_code\",\"className\":\"com.transsion.usercenter.profile.ProfileQRCodeActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_center\",\"className\":\"com.transsion.usercenter.profile.ProfileActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/message_detail\",\"className\":\"com.transsion.usercenter.message.detail.MessageDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_room_message\",\"className\":\"com.transsion.usercenter.message.UserRoomMessageActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_message\",\"className\":\"com.transsion.usercenter.message.UserMessageActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/kids/pin_management\",\"className\":\"com.transsion.usercenter.kids.PinManagementActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/kids/manage_profiles\",\"className\":\"com.transsion.usercenter.kids.ManageProfilesActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/device_management\",\"className\":\"com.transsion.usercenter.devicemanagement.activity.DeviceManagementActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]"

.field public static final TAG:Ljava/lang/String; = "Created by kymjs, and APT Version is 1.3.0."

.field public static final THEROUTER_APT_VERSION:Ljava/lang/String; = "1.3.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRoute()V
    .locals 4

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/tv_download_web_link"

    const-string v2, "com.transsion.usercenter.tvlink.TvDownloadWebLinkActivity"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/user_center_labels_feedback"

    const-string v2, "com.transsion.usercenter.setting.labelsfeedback.LabelsFeedbackActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/user_center_feedback"

    const-string v2, "com.transsion.usercenter.setting.feedback.UserSettingFeedbackActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/watch_option"

    const-string v2, "com.transsion.usercenter.setting.SettingWatchActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/setting_privacy_data"

    const-string v2, "com.transsion.usercenter.setting.SettingPrivacyDataActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/setting_notice"

    const-string v2, "com.transsion.usercenter.setting.SettingNoticeActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/setting"

    const-string v2, "com.transsion.usercenter.setting.SettingActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/see"

    const-string v2, "com.transsion.usercenter.profile.see.ProfileSeeActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/user_profile"

    const-string v2, "com.transsion.usercenter.profile.UserProfileActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/qr_code"

    const-string v2, "com.transsion.usercenter.profile.ProfileQRCodeActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/user_center"

    const-string v2, "com.transsion.usercenter.profile.ProfileActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/message_detail"

    const-string v2, "com.transsion.usercenter.message.detail.MessageDetailActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/user_room_message"

    const-string v2, "com.transsion.usercenter.message.UserRoomMessageActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/user_message"

    const-string v2, "com.transsion.usercenter.message.UserMessageActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/kids/pin_management"

    const-string v2, "com.transsion.usercenter.kids.PinManagementActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/kids/manage_profiles"

    const-string v2, "com.transsion.usercenter.kids.ManageProfilesActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    new-instance v0, Lcom/therouter/router/RouteItem;

    const-string v1, "/profile/device_management"

    const-string v2, "com.transsion.usercenter.devicemanagement.activity.DeviceManagementActivity"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/therouter/router/RouteItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->c(Lcom/therouter/router/RouteItem;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    invoke-static {}, La/RouterMap__TheRouter__330865985;->addRoute()V

    return-void
.end method
