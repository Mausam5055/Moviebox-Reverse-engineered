package com.mbridge.msdk.out;

import android.app.Activity;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.mbridge.msdk.advanced.middle.c;
import com.mbridge.msdk.foundation.tools.t0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class MBNativeAdvancedHandler {
    private c nativeAdvancedProvider;

    /* JADX INFO: renamed from: com.mbridge.msdk.out.MBNativeAdvancedHandler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$mbridge$msdk$out$MBMultiStateEnum;

        static {
            int[] iArr = new int[MBMultiStateEnum.values().length];
            $SwitchMap$com$mbridge$msdk$out$MBMultiStateEnum = iArr;
            try {
                iArr[MBMultiStateEnum.negative.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$mbridge$msdk$out$MBMultiStateEnum[MBMultiStateEnum.positive.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$mbridge$msdk$out$MBMultiStateEnum[MBMultiStateEnum.undefined.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public MBNativeAdvancedHandler(Activity activity, String str, String str2) {
        String strE = t0.e(str2);
        if (!TextUtils.isEmpty(strE)) {
            t0.b(str2, strE);
        }
        this.nativeAdvancedProvider = new c(str, str2, activity);
    }

    public void autoLoopPlay(int i11) {
        c cVar = this.nativeAdvancedProvider;
        if (cVar != null) {
            cVar.h(i11);
        }
    }

    public ViewGroup getAdViewGroup() {
        c cVar = this.nativeAdvancedProvider;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    public String getCreativeIdWithUnitId() {
        c cVar = this.nativeAdvancedProvider;
        return cVar != null ? cVar.c() : "";
    }

    public String getRequestId() {
        c cVar = this.nativeAdvancedProvider;
        return cVar != null ? cVar.e() : "";
    }

    public boolean isReady() {
        return isReady("");
    }

    public boolean isReady(String str) {
        c cVar = this.nativeAdvancedProvider;
        if (cVar != null) {
            return cVar.b(str);
        }
        return false;
    }

    public void load() throws Throwable {
        c cVar = this.nativeAdvancedProvider;
        if (cVar != null) {
            cVar.c("");
        }
    }

    public void loadByToken(String str) throws Throwable {
        c cVar = this.nativeAdvancedProvider;
        if (cVar != null) {
            cVar.d(str);
        }
    }

    public void onPause() {
        c cVar = this.nativeAdvancedProvider;
        if (cVar != null) {
            cVar.f(3);
        }
    }

    public void onResume() {
        c cVar = this.nativeAdvancedProvider;
        if (cVar != null) {
            cVar.i(3);
        }
    }

    public void release() {
        c cVar = this.nativeAdvancedProvider;
        if (cVar != null) {
            cVar.b();
        }
    }

    public void setAdListener(NativeAdvancedAdListener nativeAdvancedAdListener) {
        c cVar = this.nativeAdvancedProvider;
        if (cVar != null) {
            cVar.a(nativeAdvancedAdListener);
        }
    }

    public void setCloseButtonState(MBMultiStateEnum mBMultiStateEnum) {
        int i11 = AnonymousClass1.$SwitchMap$com$mbridge$msdk$out$MBMultiStateEnum[mBMultiStateEnum.ordinal()];
        int i12 = 1;
        if (i11 == 1) {
            i12 = 0;
        } else if (i11 != 2) {
            i12 = -1;
        }
        this.nativeAdvancedProvider.b(i12);
    }

    public void setNativeViewSize(int i11, int i12) {
        this.nativeAdvancedProvider.b(i12, i11);
    }

    public void setPlayMuteState(int i11) {
        c cVar = this.nativeAdvancedProvider;
        if (cVar != null) {
            cVar.d(i11);
        }
    }

    public void setViewElementStyle(JSONObject jSONObject) {
        c cVar = this.nativeAdvancedProvider;
        if (cVar != null) {
            cVar.b(jSONObject);
        }
    }
}
