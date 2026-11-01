package com.cloud.hisavana.sdk;

import android.content.Context;
import com.cloud.hisavana.sdk.common.activity.MiniAppPopUpActivity;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.MiniAppInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSToastUtil;
import com.cloud.tmc.integration.bridge.NativeRequestBridge;
import com.cloud.tmc.kernel.constants.TmcConstants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public abstract class x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f23065a = new a(null);

    public static final class a {

        /* JADX INFO: renamed from: com.cloud.hisavana.sdk.x0$a$a, reason: collision with other inner class name */
        public static final class C0310a extends DrawableResponseListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Function1 f23066b;

            C0310a(Function1 function1) {
                this.f23066b = function1;
            }

            @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
            public void a(TaErrorCode taErrorCode) {
                e4.b().w(TmcConstants.DIR_BYTEAPP, "Failed to load mini app icon.");
            }

            @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
            public void g(int i11, AdImage adImage) {
                this.f23066b.invoke(adImage != null ? adImage.getFilePath() : null);
            }
        }

        @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", NativeRequestBridge.KEY_FILE_PATH, "", "a", "(Ljava/lang/String;)V"}, k = 3, mv = {1, 9, 0})
        static final class b extends Lambda implements Function1<String, Unit> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Ref.ObjectRef<String> f23067a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(Ref.ObjectRef<String> objectRef) {
                super(1);
                this.f23067a = objectRef;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final void a(String str) {
                this.f23067a.element = str;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                a((String) obj);
                return Unit.f67061a;
            }
        }

        public static final class c implements MiniAppPopUpActivity.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ AdsDTO f23068a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Ref.ObjectRef f23069b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ MiniAppInfo f23070c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Context f23071d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f23072e;

            /* JADX INFO: renamed from: com.cloud.hisavana.sdk.x0$a$c$a, reason: collision with other inner class name */
            @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "result", "", "a", "(I)V"}, k = 3, mv = {1, 9, 0})
            static final class C0311a extends Lambda implements Function1<Integer, Unit> {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ AdsDTO f23073a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ Context f23074b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                final /* synthetic */ String f23075c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0311a(AdsDTO adsDTO, Context context, String str) {
                    super(1);
                    this.f23073a = adsDTO;
                    this.f23074b = context;
                    this.f23075c = str;
                }

                public final void a(int i11) {
                    x0.f23065a.b(i11, this.f23073a);
                    N0.R(this.f23074b, this.f23075c);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    a(((Number) obj).intValue());
                    return Unit.f67061a;
                }
            }

            c(AdsDTO adsDTO, Ref.ObjectRef objectRef, MiniAppInfo miniAppInfo, Context context, String str) {
                this.f23068a = adsDTO;
                this.f23069b = objectRef;
                this.f23070c = miniAppInfo;
                this.f23071d = context;
                this.f23072e = str;
            }

            @Override // com.cloud.hisavana.sdk.common.activity.MiniAppPopUpActivity.a
            public void a() {
                e4.b().d(TmcConstants.DIR_BYTEAPP, "On click miniapp guide's skip button.");
                AthenaTracker.U(this.f23068a, 4);
                N0.R(this.f23071d, this.f23072e);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.cloud.hisavana.sdk.common.activity.MiniAppPopUpActivity.a
            public void b() {
                e4.b().d(TmcConstants.DIR_BYTEAPP, "On click miniapp guide's sure button and show system add homescreen.");
                AthenaTracker.U(this.f23068a, 2);
                y0.f23107a.g((String) this.f23069b.element, this.f23070c, new C0311a(this.f23068a, this.f23071d, this.f23072e));
            }

            @Override // com.cloud.hisavana.sdk.common.activity.MiniAppPopUpActivity.a
            public void c() {
                e4.b().d(TmcConstants.DIR_BYTEAPP, "On click miniapp guide's cancel button.");
                AthenaTracker.U(this.f23068a, 3);
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a(int i11, Context context, AdsDTO adsDTO, MiniAppInfo miniAppInfo, String str) {
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            String iconUrl = miniAppInfo.getIconUrl();
            Intrinsics.g(iconUrl, "getIconUrl(...)");
            d(iconUrl, new b(objectRef));
            e4.b().d(TmcConstants.DIR_BYTEAPP, "Popup mini app guide.");
            AthenaTracker.U(adsDTO, 1);
            MiniAppPopUpActivity.Y(context, miniAppInfo, i11, new c(adsDTO, objectRef, miniAppInfo, context, str));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(int i11, AdsDTO adsDTO) {
            if (i11 == -1) {
                e4.b().d(TmcConstants.DIR_BYTEAPP, "Failed to add to homescreen.");
                HSToastUtil.e(R$string.failed_to_get);
                return;
            }
            if (i11 == 0) {
                e4.b().d(TmcConstants.DIR_BYTEAPP, "Cancel to add to homescreen.");
                AthenaTracker.V(adsDTO, 1);
                AthenaTracker.V(adsDTO, 3);
            } else {
                if (i11 != 1) {
                    if (i11 != 2) {
                        return;
                    }
                    e4.b().d(TmcConstants.DIR_BYTEAPP, "Existed in homescreen.");
                    HSToastUtil.e(R$string.already_exists);
                    return;
                }
                e4.b().d(TmcConstants.DIR_BYTEAPP, "Succeed to add to homescreen.");
                AthenaTracker.V(adsDTO, 1);
                AthenaTracker.V(adsDTO, 2);
                HSToastUtil.e(R$string.got_successfully);
            }
        }

        private final void d(String str, Function1 function1) {
            DownLoadRequest.k(str, null, 13, true, new C0310a(function1));
        }

        public final boolean e(String str, Context context, AdsDTO adsDTO) {
            if (str != null && context != null && adsDTO != null) {
                if (StringsKt.W(str, "launcherdlt://", false, 2, null)) {
                    return N0.R(context, str);
                }
                if (!StringsKt.W(str, "{\"", false, 2, null)) {
                    return false;
                }
                try {
                    MiniAppInfo miniAppInfo = (MiniAppInfo) GsonUtil.a(str, MiniAppInfo.class);
                    if (miniAppInfo != null) {
                        String deepLinkUrl = miniAppInfo.getDeepLinkUrl();
                        Intrinsics.g(deepLinkUrl, "getDeepLinkUrl(...)");
                        if (StringsKt.W(deepLinkUrl, "launcherdlt://", false, 2, null)) {
                            String deepLinkUrl2 = miniAppInfo.getDeepLinkUrl();
                            int intGuideMode = miniAppInfo.getIntGuideMode();
                            if (intGuideMode == 0) {
                                return N0.R(context, deepLinkUrl2);
                            }
                            if (intGuideMode == 1) {
                                Intrinsics.e(deepLinkUrl2);
                                a(1, context, adsDTO, miniAppInfo, deepLinkUrl2);
                            } else if (intGuideMode == 2) {
                                Intrinsics.e(deepLinkUrl2);
                                a(2, context, adsDTO, miniAppInfo, deepLinkUrl2);
                            }
                            return true;
                        }
                    }
                    return false;
                } catch (Exception unused) {
                    e4.b().e(TmcConstants.DIR_BYTEAPP, "Parse mini app info failed.");
                }
            }
            return false;
        }
    }
}
