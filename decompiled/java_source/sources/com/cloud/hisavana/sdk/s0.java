package com.cloud.hisavana.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.iab.omid.library.hisavana.adsession.CreativeType;
import com.iab.omid.library.hisavana.adsession.ImpressionType;
import com.iab.omid.library.hisavana.adsession.Owner;
import com.iab.omid.library.hisavana.adsession.g;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class s0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f22931a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile String f22932b = "";

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:25:0x0064  */
        private final List c(AdsDTO adsDTO) {
            List<AdsProtocolBean.OmIdData> omIdVerifications;
            g gVarA;
            String str;
            ArrayList arrayList = new ArrayList();
            if (adsDTO != null && (omIdVerifications = adsDTO.getOmIdVerifications()) != null) {
                Intrinsics.e(omIdVerifications);
                Iterator<AdsProtocolBean.OmIdData> it = omIdVerifications.iterator();
                while (it.hasNext()) {
                    AdsProtocolBean.OmIdData next = it.next();
                    if (!com.cloud.hisavana.sdk.common.util.p0.f(next != null ? next.url : null)) {
                        e4.b().w("OmSdk", "omid data.vendorUrl is not valid");
                    } else {
                        if (arrayList.size() >= 5) {
                            e4.b().w("OmSdk", "omid verification scripts num is bigger than 5");
                            break;
                        }
                        if (next == null || (str = next.verification_parameters) == null) {
                            gVarA = g.a(next.vendorKey, new URL(next.url), next.verification_parameters);
                        } else {
                            Intrinsics.e(str);
                            if (str.length() == 0) {
                                gVarA = g.b(new URL(next.url));
                            } else {
                                gVarA = g.a(next.vendorKey, new URL(next.url), next.verification_parameters);
                            }
                        }
                        Intrinsics.e(gVarA);
                        arrayList.add(gVarA);
                    }
                }
            }
            return arrayList;
        }

        private final void d(Context context) {
            if (fe.a.c()) {
                return;
            }
            fe.a.a(context.getApplicationContext());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void g(Context context) {
            Intrinsics.h(context, "$context");
            try {
                InputStream inputStreamOpenRawResource = context.getResources().openRawResource(R$raw.omsdk_v1);
                try {
                    byte[] bArr = new byte[inputStreamOpenRawResource.available()];
                    int i11 = inputStreamOpenRawResource.read(bArr);
                    a aVar = s0.f22931a;
                    Charset charsetForName = Charset.forName("UTF-8");
                    Intrinsics.g(charsetForName, "forName(...)");
                    s0.f22932b = new String(bArr, 0, i11, charsetForName);
                    Unit unit = Unit.f67061a;
                    CloseableKt.a(inputStreamOpenRawResource, null);
                    e4.b().d("OmSdk", "omid js loaded");
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(inputStreamOpenRawResource, th2);
                        throw th3;
                    }
                }
            } catch (IOException e11) {
                e4.b().e("OmSdk", "Omid resource not found: " + e11.getMessage());
            }
        }

        public final com.iab.omid.library.hisavana.adsession.b b(Context context, CreativeType creativeType, AdsDTO adsDTO) {
            List<AdsProtocolBean.OmIdData> omIdVerifications;
            if (k1.o().r() && context != null && creativeType != null) {
                if (TextUtils.isEmpty(s0.f22932b)) {
                    e4.b().w("OmSdk", "omid js is not ready");
                    f(context);
                    return null;
                }
                if (adsDTO != null && ((omIdVerifications = adsDTO.getOmIdVerifications()) == null || !omIdVerifications.isEmpty())) {
                    try {
                        List listC = c(adsDTO);
                        if (listC.isEmpty()) {
                            return null;
                        }
                        e4.b().d("OmSdk", "omid valid resource count : " + listC.size());
                        d(context);
                        ImpressionType impressionType = creativeType == CreativeType.AUDIO ? ImpressionType.AUDIBLE : ImpressionType.VIEWABLE;
                        Owner owner = Owner.NATIVE;
                        return com.iab.omid.library.hisavana.adsession.b.b(com.iab.omid.library.hisavana.adsession.c.a(creativeType, impressionType, owner, (creativeType == CreativeType.HTML_DISPLAY || creativeType == CreativeType.NATIVE_DISPLAY) ? Owner.NONE : owner, false), com.iab.omid.library.hisavana.adsession.d.a(com.iab.omid.library.hisavana.adsession.f.a("hisavana", "3.3.8.0"), s0.f22932b, listC, null, "{\"partner\":\"hisavana\"}"));
                    } catch (Throwable th2) {
                        e4.b().e("OmSdk", "get adSession error: " + th2.getMessage());
                    }
                }
            }
            return null;
        }

        public final void e(final Context context, boolean z10) {
            Intrinsics.h(context, "context");
            if (z10 && TextUtils.isEmpty(s0.f22932b)) {
                HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.q0
                    @Override // java.lang.Runnable
                    public final void run() {
                        s0.a.g(context);
                    }
                });
            }
        }

        public final void f(Context context) {
            Intrinsics.h(context, "context");
            e(context, k1.o().r());
        }
    }

    public static final void b(Context context) {
        f22931a.f(context);
    }

    public static final void c(Context context, boolean z10) {
        f22931a.e(context, z10);
    }
}
