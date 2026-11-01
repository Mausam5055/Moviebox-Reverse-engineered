package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__330865985 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/profile/tv_download_web_link\",\"className\":\"com.transsion.usercenter.tvlink.TvDownloadWebLinkActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_center_labels_feedback\",\"className\":\"com.transsion.usercenter.setting.labelsfeedback.LabelsFeedbackActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_center_feedback\",\"className\":\"com.transsion.usercenter.setting.feedback.UserSettingFeedbackActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/watch_option\",\"className\":\"com.transsion.usercenter.setting.SettingWatchActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/setting_privacy_data\",\"className\":\"com.transsion.usercenter.setting.SettingPrivacyDataActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/setting_notice\",\"className\":\"com.transsion.usercenter.setting.SettingNoticeActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/setting\",\"className\":\"com.transsion.usercenter.setting.SettingActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/see\",\"className\":\"com.transsion.usercenter.profile.see.ProfileSeeActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_profile\",\"className\":\"com.transsion.usercenter.profile.UserProfileActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/qr_code\",\"className\":\"com.transsion.usercenter.profile.ProfileQRCodeActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_center\",\"className\":\"com.transsion.usercenter.profile.ProfileActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/message_detail\",\"className\":\"com.transsion.usercenter.message.detail.MessageDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_room_message\",\"className\":\"com.transsion.usercenter.message.UserRoomMessageActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/user_message\",\"className\":\"com.transsion.usercenter.message.UserMessageActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/kids/pin_management\",\"className\":\"com.transsion.usercenter.kids.PinManagementActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/kids/manage_profiles\",\"className\":\"com.transsion.usercenter.kids.ManageProfilesActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/device_management\",\"className\":\"com.transsion.usercenter.devicemanagement.activity.DeviceManagementActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/profile/tv_download_web_link", "com.transsion.usercenter.tvlink.TvDownloadWebLinkActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/user_center_labels_feedback", "com.transsion.usercenter.setting.labelsfeedback.LabelsFeedbackActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/user_center_feedback", "com.transsion.usercenter.setting.feedback.UserSettingFeedbackActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/watch_option", "com.transsion.usercenter.setting.SettingWatchActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/setting_privacy_data", "com.transsion.usercenter.setting.SettingPrivacyDataActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/setting_notice", "com.transsion.usercenter.setting.SettingNoticeActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/setting", "com.transsion.usercenter.setting.SettingActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/see", "com.transsion.usercenter.profile.see.ProfileSeeActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/user_profile", "com.transsion.usercenter.profile.UserProfileActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/qr_code", "com.transsion.usercenter.profile.ProfileQRCodeActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/user_center", "com.transsion.usercenter.profile.ProfileActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/message_detail", "com.transsion.usercenter.message.detail.MessageDetailActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/user_room_message", "com.transsion.usercenter.message.UserRoomMessageActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/user_message", "com.transsion.usercenter.message.UserMessageActivity", "", ""));
        RouteMapKt.c(new RouteItem("/kids/pin_management", "com.transsion.usercenter.kids.PinManagementActivity", "", ""));
        RouteMapKt.c(new RouteItem("/kids/manage_profiles", "com.transsion.usercenter.kids.ManageProfilesActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/device_management", "com.transsion.usercenter.devicemanagement.activity.DeviceManagementActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
