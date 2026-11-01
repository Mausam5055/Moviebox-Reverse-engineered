package com.cloud.hisavana.sdk;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.Toast;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.common.activity.AdvertiserLinkActivity;
import com.cloud.hisavana.sdk.common.activity.PersonalCloseAdActivity;
import com.cloud.hisavana.sdk.common.activity.TAdInterstitialActivity;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.widget.expandmenu.AdExpandMenuContentView;
import com.cloud.hisavana.sdk.common.widget.expandmenu.AdExpandMenuItemView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import java.lang.ref.WeakReference;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public class t2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f22943a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference f22944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference f22945c;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f22946a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22947b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f22948c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Context f22949d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ AdCloseView f22950e;

        a(Object obj, AdsDTO adsDTO, boolean z10, Context context, AdCloseView adCloseView) {
            this.f22946a = obj;
            this.f22947b = adsDTO;
            this.f22948c = z10;
            this.f22949d = context;
            this.f22950e = adCloseView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e4.b().d("ssp", "registerCloseAd ---- >  " + this.f22946a);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - t2.this.f22943a < 2000) {
                e4.b().d("ssp", "registerCloseAd ---- > interval time not reached");
                return;
            }
            t2.this.f22943a = jCurrentTimeMillis;
            if (this.f22946a == null) {
                return;
            }
            if (this.f22947b.getSource() == 4 || this.f22948c) {
                t2.this.m(this.f22946a);
                return;
            }
            if (t2.this.o(this.f22949d, this.f22946a, this.f22947b, this.f22950e)) {
                t2.this.q(this.f22946a);
                if (!(this.f22946a instanceof i1) || this.f22947b.getDisplayRule() == Constants.AdDisplayRule.RU) {
                    return;
                }
                ((i1) this.f22946a).O();
            }
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f22952a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f22953b;

        static {
            int[] iArr = new int[AdExpandMenuItemView.Type.values().length];
            f22953b = iArr;
            try {
                iArr[AdExpandMenuItemView.Type.PERSONALISE_CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22953b[AdExpandMenuItemView.Type.ADVERTISER_INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22953b[AdExpandMenuItemView.Type.COPY_LINK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Constants.AdDisplayRule.values().length];
            f22952a = iArr2;
            try {
                iArr2[Constants.AdDisplayRule.RU.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f22952a[Constants.AdDisplayRule.UNIVERSAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final t2 f22954a = new t2();
    }

    private void i(Context context, Object obj, AdsDTO adsDTO) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("tag_ad_bean", adsDTO);
        bundle.putInt("close_hash_code", obj == null ? 0 : obj.hashCode());
        Intent intent = new Intent(context, (Class<?>) PersonalCloseAdActivity.class);
        intent.putExtras(bundle);
        if (!(context instanceof Activity)) {
            intent.setFlags(ASTNode.DEOP);
        }
        context.startActivity(intent);
    }

    private void j(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) AdvertiserLinkActivity.class);
        intent.putExtra("url", str);
        if (!(context instanceof Activity)) {
            intent.setFlags(ASTNode.DEOP);
        }
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public void h(AdExpandMenuItemView.Type type, Context context, AdsDTO adsDTO, Object obj) {
        if (context == null || adsDTO == null || obj == null) {
            return;
        }
        int i11 = b.f22953b[type.ordinal()];
        if (i11 == 1) {
            i(context, obj, adsDTO);
            if (obj instanceof i1) {
                ((i1) obj).O();
                return;
            }
            return;
        }
        if (i11 == 2) {
            j(context, com.cloud.hisavana.sdk.common.util.f0.b(adsDTO));
            if (obj instanceof i1) {
                ((i1) obj).O();
                return;
            }
            return;
        }
        if (i11 != 3) {
            return;
        }
        try {
            Object systemService = context.getSystemService("clipboard");
            if (systemService instanceof ClipboardManager) {
                ClipboardManager clipboardManager = (ClipboardManager) systemService;
                ClipData clipDataNewPlainText = ClipData.newPlainText(context.getString(R$string.copy_link), com.cloud.hisavana.sdk.common.util.f0.d(adsDTO));
                if (clipDataNewPlainText != null) {
                    clipboardManager.setPrimaryClip(clipDataNewPlainText);
                    Toast.makeText(context, context.getString(R$string.copy_successfully), 0).show();
                }
            }
        } catch (Exception e11) {
            e4.b().e("ssp", Log.getStackTraceString(e11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(Object obj) {
        TaNativeInfo taNativeInfo;
        if (obj == null) {
            return;
        }
        if (obj instanceof i1) {
            ((i1) obj).B0();
            return;
        }
        if (obj instanceof p3) {
            ((p3) obj).P();
            return;
        }
        if (!(obj instanceof u3)) {
            if (obj instanceof TAdInterstitialActivity) {
                ((TAdInterstitialActivity) obj).L0();
            }
        } else {
            WeakReference weakReference = this.f22945c;
            if (weakReference == null || (taNativeInfo = (TaNativeInfo) weakReference.get()) == null) {
                return;
            }
            ((u3) obj).R(taNativeInfo);
        }
    }

    public static t2 p() {
        return c.f22954a;
    }

    public void d() {
        Object obj;
        WeakReference weakReference = this.f22944b;
        if (weakReference == null || (obj = weakReference.get()) == null) {
            return;
        }
        m(obj);
    }

    public void e(int i11) {
        Object obj;
        WeakReference weakReference = this.f22944b;
        if (weakReference == null || (obj = weakReference.get()) == null || obj.hashCode() != i11) {
            return;
        }
        m(obj);
    }

    public void f(Context context, AdCloseView adCloseView, Object obj, AdsDTO adsDTO) {
        g(context, adCloseView, obj, adsDTO, false);
    }

    public void g(Context context, AdCloseView adCloseView, Object obj, AdsDTO adsDTO, boolean z10) {
        if (adCloseView == null || adsDTO == null) {
            return;
        }
        e4.b().d("ssp", "AdCloseManager -------> registerCloseAd ---- >");
        adCloseView.setVisibility(0);
        adCloseView.setOnClickListener(new a(obj, adsDTO, z10, context, adCloseView));
    }

    public void n(Object obj, TaNativeInfo taNativeInfo) {
        this.f22944b = new WeakReference(obj);
        this.f22945c = new WeakReference(taNativeInfo);
    }

    public boolean o(final Context context, final Object obj, final AdsDTO adsDTO, AdCloseView adCloseView) {
        if (context != null && adsDTO != null) {
            int i11 = b.f22952a[adsDTO.getDisplayRule().ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    i(context, obj, adsDTO);
                }
            } else if (obj != null && adCloseView != null) {
                PopupWindow popupWindowI = com.cloud.hisavana.sdk.common.widget.expandmenu.c.i(adCloseView, com.cloud.hisavana.sdk.common.util.f0.a(adsDTO), new AdExpandMenuContentView.d() { // from class: com.cloud.hisavana.sdk.s2
                    @Override // com.cloud.hisavana.sdk.common.widget.expandmenu.AdExpandMenuContentView.d
                    public final void a(AdExpandMenuItemView.Type type) {
                        this.f22934a.h(context, adsDTO, obj, type);
                    }
                });
                if (obj instanceof i1) {
                    ((i1) obj).c0(popupWindowI);
                }
            }
            return true;
        }
        return false;
    }

    public void q(Object obj) {
        this.f22944b = new WeakReference(obj);
    }

    public long r() {
        return this.f22943a;
    }
}
