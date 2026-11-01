package com.cloud.tmc.miniapp.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.FastClickUtil;
import com.cloud.tmc.integration.utils.JsonUtil;
import com.cloud.tmc.integration.utils.ext.TextViewExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.miniapp.FwDevDownloadUtils;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.base.BaseActivity;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniapp.widget.NativeTitleBar;
import com.cloud.tmc.miniapp.widget.SettingBar;
import com.cloud.tmc.miniutils.util.SizeUtils;
import com.cloud.tmc.miniutils.util.TimeUtils;
import java.text.SimpleDateFormat;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public class AppBrandProfileActivity extends BaseActivity {
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "AppBrandProfileActivity";
    private AppModel appModel;
    private long appReleaseTime;
    private final Lazy mLayoutTitle$delegate = LazyKt.b(new Function0<NativeTitleBar>() { // from class: com.cloud.tmc.miniapp.ui.AppBrandProfileActivity$mLayoutTitle$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final NativeTitleBar invoke() {
            return (NativeTitleBar) this.this$0.findViewById(R.id.layout_title);
        }
    });
    private final Lazy ivLogo$delegate = LazyKt.b(new Function0<AppCompatImageView>() { // from class: com.cloud.tmc.miniapp.ui.AppBrandProfileActivity$ivLogo$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final AppCompatImageView invoke() {
            return (AppCompatImageView) this.this$0.findViewById(R.id.iv_logo);
        }
    });
    private final Lazy tvName$delegate = LazyKt.b(new Function0<TextView>() { // from class: com.cloud.tmc.miniapp.ui.AppBrandProfileActivity$tvName$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final TextView invoke() {
            return (TextView) this.this$0.findViewById(R.id.tv_name);
        }
    });
    private final Lazy tvDesc$delegate = LazyKt.b(new Function0<TextView>() { // from class: com.cloud.tmc.miniapp.ui.AppBrandProfileActivity$tvDesc$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final TextView invoke() {
            return (TextView) this.this$0.findViewById(R.id.tv_desc);
        }
    });
    private final Lazy sbDeveloperName$delegate = LazyKt.b(new Function0<SettingBar>() { // from class: com.cloud.tmc.miniapp.ui.AppBrandProfileActivity$sbDeveloperName$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SettingBar invoke() {
            return (SettingBar) this.this$0.findViewById(R.id.sb_developer_name);
        }
    });
    private final Lazy sbVersion$delegate = LazyKt.b(new Function0<SettingBar>() { // from class: com.cloud.tmc.miniapp.ui.AppBrandProfileActivity$sbVersion$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SettingBar invoke() {
            return (SettingBar) this.this$0.findViewById(R.id.sb_version);
        }
    });
    private final Lazy sbUpdate$delegate = LazyKt.b(new Function0<SettingBar>() { // from class: com.cloud.tmc.miniapp.ui.AppBrandProfileActivity$sbUpdate$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SettingBar invoke() {
            return (SettingBar) this.this$0.findViewById(R.id.sb_update);
        }
    });
    private final Lazy sbAccountType$delegate = LazyKt.b(new Function0<SettingBar>() { // from class: com.cloud.tmc.miniapp.ui.AppBrandProfileActivity$sbAccountType$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SettingBar invoke() {
            return (SettingBar) this.this$0.findViewById(R.id.sb_account_type);
        }
    });
    private final Lazy tvPrivacyPolicy$delegate = LazyKt.b(new Function0<TextView>() { // from class: com.cloud.tmc.miniapp.ui.AppBrandProfileActivity$tvPrivacyPolicy$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final TextView invoke() {
            return (TextView) this.this$0.findViewById(R.id.tv_privacy_policy);
        }
    });
    private final Lazy tvUserAgreement$delegate = LazyKt.b(new Function0<TextView>() { // from class: com.cloud.tmc.miniapp.ui.AppBrandProfileActivity$tvUserAgreement$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final TextView invoke() {
            return (TextView) this.this$0.findViewById(R.id.tv_user_agreement);
        }
    });
    private String appVersion = "";
    private String appName = "";
    private String appLogoUrl = "";
    private String appDesc = "";
    private String appRegisterType = "";
    private String appDeveloper = "";

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void launch$default(Companion companion, Context context, String str, Bundle bundle, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                bundle = null;
            }
            companion.launch(context, str, bundle);
        }

        @JvmStatic
        public final void launch(Context context, String appId, Bundle bundle) {
            Intrinsics.h(context, "context");
            Intrinsics.h(appId, "appId");
            Intent intent = new Intent(context, (Class<?>) AppBrandProfileActivity.class);
            if (!(context instanceof Activity)) {
                intent.addFlags(ASTNode.DEOP);
            }
            intent.putExtra("appId", appId);
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, context);
            context.startActivity(intent);
        }
    }

    private final AppCompatImageView getIvLogo() {
        return (AppCompatImageView) this.ivLogo$delegate.getValue();
    }

    private final NativeTitleBar getMLayoutTitle() {
        return (NativeTitleBar) this.mLayoutTitle$delegate.getValue();
    }

    private final SettingBar getSbAccountType() {
        return (SettingBar) this.sbAccountType$delegate.getValue();
    }

    private final SettingBar getSbDeveloperName() {
        return (SettingBar) this.sbDeveloperName$delegate.getValue();
    }

    private final SettingBar getSbUpdate() {
        return (SettingBar) this.sbUpdate$delegate.getValue();
    }

    private final SettingBar getSbVersion() {
        return (SettingBar) this.sbVersion$delegate.getValue();
    }

    private final TextView getTvDesc() {
        return (TextView) this.tvDesc$delegate.getValue();
    }

    private final TextView getTvName() {
        return (TextView) this.tvName$delegate.getValue();
    }

    private final TextView getTvPrivacyPolicy() {
        return (TextView) this.tvPrivacyPolicy$delegate.getValue();
    }

    private final TextView getTvUserAgreement() {
        return (TextView) this.tvUserAgreement$delegate.getValue();
    }

    @JvmStatic
    public static final void launch(Context context, String str, Bundle bundle) {
        Companion.launch(context, str, bundle);
    }

    private final String toDate(long j11) {
        SimpleDateFormat simpleDateFormat;
        if (j11 == 0) {
            return "";
        }
        try {
            String language = Locale.getDefault().getLanguage();
            Locale locale = Locale.FRANCE;
            if (Intrinsics.c(language, locale.getLanguage())) {
                simpleDateFormat = new SimpleDateFormat("dd MMM yyyy", locale);
            } else {
                Locale locale2 = Locale.CHINA;
                if (Intrinsics.c(language, locale2.getLanguage())) {
                    simpleDateFormat = new SimpleDateFormat("yyyy.MM.dd", locale2);
                } else {
                    simpleDateFormat = Intrinsics.c(language, new Locale("ar").getLanguage()) ? new SimpleDateFormat("dd MMM, yyyy", new Locale("ar")) : new SimpleDateFormat("dd MMM, yyyy", Locale.getDefault());
                }
            }
            String strMillis2String = TimeUtils.millis2String(j11, simpleDateFormat);
            Intrinsics.g(strMillis2String, "millis2String(releaseTime, formatter)");
            return strMillis2String;
        } catch (Throwable th2) {
            TmcLogger.e(TmcConstants.TAG, "appModel is null", th2);
            return "";
        }
    }

    public final String getAppDesc() {
        return this.appDesc;
    }

    public final String getAppDeveloper() {
        return this.appDeveloper;
    }

    public final String getAppLogoUrl() {
        return this.appLogoUrl;
    }

    public final AppModel getAppModel() {
        return this.appModel;
    }

    public final String getAppName() {
        return this.appName;
    }

    public final String getAppRegisterType() {
        return this.appRegisterType;
    }

    public final long getAppReleaseTime() {
        return this.appReleaseTime;
    }

    public final String getAppVersion() {
        return this.appVersion;
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_app_brand_profile;
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void hideStatusLoading() {
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00e2 A[Catch: all -> 0x00d8, TryCatch #1 {all -> 0x00d8, blocks: (B:32:0x007d, B:34:0x009a, B:37:0x00a1, B:40:0x00da, B:42:0x00de, B:44:0x00e2, B:47:0x00e9, B:50:0x00f6, B:53:0x00ff, B:56:0x0108, B:59:0x0111, B:62:0x011a), top: B:124:0x007d, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:55:0x0107  */
    /* JADX WARN: Code duplicated, block: B:58:0x0110  */
    /* JADX WARN: Code duplicated, block: B:61:0x0119  */
    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void initData() {
        TextView tvDesc;
        AppModel appModel;
        String name;
        String miniAppVersion;
        String desc;
        String logo;
        String registerType;
        String developer;
        try {
            TmcLogger.d(TAG, "initData");
            String string = getString(TmcConstants.EXTRA_APP_NAME);
            if (string == null || string.length() <= 0) {
                String string2 = getString("appId");
                AppModel appModelFromUsed = string2 != null ? ((TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class)).getAppModelFromUsed(getContext(), string2) : null;
                this.appModel = appModelFromUsed;
                if (appModelFromUsed == null) {
                    try {
                        TmcLogger.d(TAG, "appModel is null");
                        String string3 = getString("appId");
                        TmcLogger.d(TAG, "appId is " + string3);
                        if (string3 != null && string3.length() != 0) {
                            String string4 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(this, String.valueOf(string3), TmcConstants.INSTANCE.getKEY_MINIAPP_INFO_ADD_HOME());
                            TmcLogger.d(TAG, "addHomeInfo -> " + string4);
                            this.appModel = (AppModel) JsonUtil.INSTANCE.fromJson(string4, AppModel.class);
                            appModel = this.appModel;
                            if (appModel != null) {
                                name = appModel.getName();
                                if (name == null) {
                                    name = "";
                                }
                                this.appName = name;
                                miniAppVersion = MiniAppLaunch.INSTANCE.getMiniAppVersion(this.appModel);
                                if (miniAppVersion == null) {
                                    miniAppVersion = "";
                                }
                                this.appVersion = miniAppVersion;
                                desc = appModel.getDesc();
                                if (desc == null) {
                                    desc = "";
                                }
                                this.appDesc = desc;
                                logo = appModel.getLogo();
                                if (logo == null) {
                                    logo = "";
                                }
                                this.appLogoUrl = logo;
                                registerType = appModel.getRegisterType();
                                if (registerType == null) {
                                    registerType = "";
                                }
                                this.appRegisterType = registerType;
                                developer = appModel.getDeveloper();
                                if (developer == null) {
                                    developer = "";
                                }
                                this.appDeveloper = developer;
                                this.appReleaseTime = appModel.getReleaseTime();
                            }
                        }
                        finish();
                        return;
                    } catch (Throwable th2) {
                        TmcLogger.e(TAG, "appModel is null", th2);
                    }
                } else {
                    appModel = this.appModel;
                    if (appModel != null) {
                        name = appModel.getName();
                        if (name == null) {
                            name = "";
                        }
                        this.appName = name;
                        miniAppVersion = MiniAppLaunch.INSTANCE.getMiniAppVersion(this.appModel);
                        if (miniAppVersion == null) {
                            miniAppVersion = "";
                        }
                        this.appVersion = miniAppVersion;
                        desc = appModel.getDesc();
                        if (desc == null) {
                            desc = "";
                        }
                        this.appDesc = desc;
                        logo = appModel.getLogo();
                        if (logo == null) {
                            logo = "";
                        }
                        this.appLogoUrl = logo;
                        registerType = appModel.getRegisterType();
                        if (registerType == null) {
                            registerType = "";
                        }
                        this.appRegisterType = registerType;
                        developer = appModel.getDeveloper();
                        if (developer == null) {
                            developer = "";
                        }
                        this.appDeveloper = developer;
                        this.appReleaseTime = appModel.getReleaseTime();
                    }
                }
            } else {
                this.appName = string;
                String string5 = getString("version");
                if (string5 == null) {
                    string5 = "";
                }
                this.appVersion = string5;
                String string6 = getString(TmcConstants.EXTRA_APP_INFO_DESC);
                if (string6 == null) {
                    string6 = "";
                }
                this.appDesc = string6;
                String string7 = getString(TmcConstants.EXTRA_APP_INFO_LOGO_URL);
                if (string7 == null) {
                    string7 = "";
                }
                this.appLogoUrl = string7;
                String string8 = getString(TmcConstants.EXTRA_APP_INFO_REGISTER_TYPE);
                if (string8 == null) {
                    string8 = "";
                }
                this.appRegisterType = string8;
                String string9 = getString(TmcConstants.EXTRA_APP_INFO_DEVELOPER);
                if (string9 == null) {
                    string9 = "";
                }
                this.appDeveloper = string9;
                this.appReleaseTime = getLong(TmcConstants.EXTRA_APP_INFO_RLEASE_TIME);
            }
        } catch (Throwable th3) {
            TmcLogger.e(TAG, th3);
        }
        try {
            AppCompatImageView ivLogo = getIvLogo();
            if (ivLogo != null) {
                ImageLoaderProxy imageLoaderProxy = (ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class);
                String str = this.appLogoUrl;
                int iDp2px = SizeUtils.dp2px(12.0f);
                int i11 = R.drawable.drawable_app_icon_place_holder;
                imageLoaderProxy.loadImgRoundCorners(this, str, ivLogo, iDp2px, i11, i11);
            }
            TextView tvName = getTvName();
            if (tvName != null) {
                tvName.setText(this.appName);
            }
            if (this.appDesc.length() > 0 && (tvDesc = getTvDesc()) != null) {
                TextViewExtKt.setMultilingualText(tvDesc, this.appDesc);
            }
            String str2 = this.appRegisterType;
            if (Intrinsics.c(str2, "1")) {
                SettingBar sbDeveloperName = getSbDeveloperName();
                if (sbDeveloperName != null) {
                    sbDeveloperName.setVisibility(8);
                }
                SettingBar sbAccountType = getSbAccountType();
                if (sbAccountType != null) {
                    sbAccountType.OooO0OO.setText(getString(R.string.mini_brand_individual));
                }
            } else if (Intrinsics.c(str2, "2")) {
                SettingBar sbDeveloperName2 = getSbDeveloperName();
                if (sbDeveloperName2 != null) {
                    sbDeveloperName2.setVisibility(0);
                }
                SettingBar sbDeveloperName3 = getSbDeveloperName();
                if (sbDeveloperName3 != null) {
                    sbDeveloperName3.OooO0OO.setText(this.appDeveloper);
                }
                SettingBar sbAccountType2 = getSbAccountType();
                if (sbAccountType2 != null) {
                    sbAccountType2.OooO0OO.setText(getString(R.string.mini_brand_business));
                }
            } else {
                SettingBar sbAccountType3 = getSbAccountType();
                if (sbAccountType3 != null) {
                    sbAccountType3.setVisibility(8);
                }
            }
            SettingBar sbVersion = getSbVersion();
            if (sbVersion != null) {
                sbVersion.OooO0OO.setText(this.appVersion);
            }
            if (this.appReleaseTime == 0) {
                SettingBar sbUpdate = getSbUpdate();
                if (sbUpdate == null) {
                    return;
                }
                sbUpdate.setVisibility(8);
                return;
            }
            SettingBar sbUpdate2 = getSbUpdate();
            if (sbUpdate2 != null) {
                sbUpdate2.setVisibility(0);
            }
            SettingBar sbUpdate3 = getSbUpdate();
            if (sbUpdate3 != null) {
                sbUpdate3.OooO0OO.setText(toDate(this.appReleaseTime));
            }
        } catch (Throwable unused) {
            TmcLogger.e(TAG, "");
        }
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void initView() {
        NativeTitleBar mLayoutTitle = getMLayoutTitle();
        if (mLayoutTitle != null) {
            mLayoutTitle.setonBackClickListener(new Function0<Unit>() { // from class: com.cloud.tmc.miniapp.ui.AppBrandProfileActivity.initView.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m252invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m252invoke() {
                    AppBrandProfileActivity.this.finish();
                }
            });
        }
        NativeTitleBar mLayoutTitle2 = getMLayoutTitle();
        if (mLayoutTitle2 != null) {
            mLayoutTitle2.setTitleLineHeight(1);
        }
        setOnClickListener(getTvPrivacyPolicy(), getTvUserAgreement(), getIvLogo());
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, com.cloud.tmc.miniapp.action.ClickAction, android.view.View.OnClickListener
    public void onClick(View view) {
        Intrinsics.h(view, "view");
        if (FastClickUtil.isFastDoubleClick()) {
            return;
        }
        if (Intrinsics.c(view, getTvPrivacyPolicy())) {
            WebViewActivity.Companion.launch$default(WebViewActivity.Companion, this, UrlKt.appendCommonParamUrl(UrlKt.PRIVACY_URL, this), null, null, 12, null);
        } else if (Intrinsics.c(view, getTvUserAgreement())) {
            WebViewActivity.Companion.launch$default(WebViewActivity.Companion, this, UrlKt.appendCommonParamUrl(UrlKt.AGREEMENT_URL, this), null, null, 12, null);
        } else if (Intrinsics.c(view, getIvLogo())) {
            FwDevDownloadUtils.INSTANCE.init(this);
        }
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TmcLogger.d(TAG, "onCreate");
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        TmcLogger.d(TAG, "onDestroy");
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        TmcLogger.d(TAG, "onNewIntent");
        initData();
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        TmcLogger.d(TAG, TmcConstants.NAVIGATION_ON_START);
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        TmcLogger.d(TAG, "onStop");
    }

    public final void setAppDesc(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appDesc = str;
    }

    public final void setAppDeveloper(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appDeveloper = str;
    }

    public final void setAppLogoUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appLogoUrl = str;
    }

    public final void setAppModel(AppModel appModel) {
        this.appModel = appModel;
    }

    public final void setAppName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appName = str;
    }

    public final void setAppRegisterType(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appRegisterType = str;
    }

    public final void setAppReleaseTime(long j11) {
        this.appReleaseTime = j11;
    }

    public final void setAppVersion(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appVersion = str;
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void showStatusLoading() {
    }
}
