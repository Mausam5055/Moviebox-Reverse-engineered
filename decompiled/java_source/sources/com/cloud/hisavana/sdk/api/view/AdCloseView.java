package com.cloud.hisavana.sdk.api.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.core.content.b;
import com.cloud.hisavana.sdk.R$color;
import com.cloud.hisavana.sdk.R$drawable;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.util.h;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"AppCompatCustomView"})
public class AdCloseView extends ImageView {

    public enum CloseImageType {
        CLOSE,
        EXPAND
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f21612a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f21613b;

        static {
            int[] iArr = new int[CloseImageType.values().length];
            f21613b = iArr;
            try {
                iArr[CloseImageType.CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21613b[CloseImageType.EXPAND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Constants.AdDisplayRule.values().length];
            f21612a = iArr2;
            try {
                iArr2[Constants.AdDisplayRule.UNIVERSAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f21612a[Constants.AdDisplayRule.RU.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public AdCloseView(Context context) {
        super(context);
        b();
    }

    public AdCloseView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public AdCloseView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        b();
    }

    private Drawable a(CloseImageType closeImageType) {
        int i11 = a.f21613b[closeImageType.ordinal()];
        if (i11 == 1) {
            return b.getDrawable(getContext(), R$drawable.hs_ad_close1);
        }
        if (i11 != 2) {
            return null;
        }
        return b.getDrawable(getContext(), R$drawable.hs_ad_expand);
    }

    private void b() {
        setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int iA = h.a(2.5f);
        setPadding(iA, iA, iA, iA);
        setBackgroundColor(b.getColor(getContext(), R$color.ad_badge_bg));
        setDisplayStyle(Constants.AdDisplayRule.UNIVERSAL, CloseImageType.CLOSE);
    }

    public void setCloseStyle(@Nullable Drawable drawable, int i11) {
        if (drawable != null) {
            try {
                setImageDrawable(drawable);
            } catch (Throwable th2) {
                e4.b().e("AdCloseView", "setCloseStyle error", th2);
                return;
            }
        }
        if (i11 != 0) {
            setBackgroundColor(i11);
        }
    }

    public void setDisplayStyle(Constants.AdDisplayRule adDisplayRule, CloseImageType closeImageType) {
        int i11 = a.f21612a[adDisplayRule.ordinal()];
        if (i11 == 1) {
            setImageDrawable(a(closeImageType));
        } else {
            if (i11 != 2) {
                return;
            }
            setImageDrawable(a(CloseImageType.EXPAND));
        }
    }

    public void setViewSize(int i11, int i12) {
        try {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(-2, -2);
            }
            if (i11 >= 0) {
                layoutParams.width = h.a(i11);
            }
            if (i12 >= 0) {
                layoutParams.height = h.a(i12);
            }
            setLayoutParams(layoutParams);
        } catch (Throwable th2) {
            e4.b().e("AdCloseView", "setViewSize error", th2);
        }
    }
}
