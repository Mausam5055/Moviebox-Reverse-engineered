package com.cloud.hisavana.sdk.api.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.R$dimen;
import com.cloud.hisavana.sdk.R$drawable;
import com.cloud.hisavana.sdk.R$string;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.util.h;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"AppCompatCustomView"})
public class AdDisclaimerView extends TextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f21614a;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f21615a;

        static {
            int[] iArr = new int[Constants.AdDisplayRule.values().length];
            f21615a = iArr;
            try {
                iArr[Constants.AdDisplayRule.UNIVERSAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21615a[Constants.AdDisplayRule.RU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface b {
        void a(String str, String str2, String str3);
    }

    public AdDisclaimerView(Context context) {
        super(context);
        b();
    }

    public AdDisclaimerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }

    public AdDisclaimerView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        b();
    }

    private void b() {
        setBackground(androidx.core.content.b.getDrawable(getContext(), R$drawable.ad_disclaimer_gradient_drawable));
        setAlpha(0.4f);
        setTextColor(Color.parseColor("#DDDDDD"));
        setTextSize(11.0f);
        setLines(1);
        setEllipsize(TextUtils.TruncateAt.END);
        setGravity(17);
        setPadding(h.a(4.0f), 0, 0, 0);
        setOnClickListener(new View.OnClickListener() { // from class: c7.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f17010a.c(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        b bVar = this.f21614a;
        if (bVar != null) {
            bVar.a(getContext().getString(R$string.disclaimer), getText().toString(), getContext().getString(R$string.f21534ok));
        }
    }

    public void setDisplayStyle(Constants.AdDisplayRule adDisplayRule, String str) {
        int i11 = a.f21615a[adDisplayRule.ordinal()];
        if (i11 == 1) {
            setVisibility(8);
            setText("");
        } else {
            if (i11 != 2) {
                return;
            }
            setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
            setText(str);
        }
    }

    public void setDisplayStyle(Constants.AdDisplayRule adDisplayRule, String str, String str2, int i11) {
        setDisplayStyle(adDisplayRule, str);
        updateHeightWith(str2, i11);
    }

    public void setListener(b bVar) {
        this.f21614a = bVar;
    }

    public void updateHeightWith(String str, int i11) {
        int i12;
        if (getVisibility() == 8) {
            return;
        }
        try {
            i12 = Integer.parseInt(str);
        } catch (NumberFormatException e11) {
            e4.b().e(e11.getLocalizedMessage());
            i12 = 0;
        }
        if (i12 == 0) {
            setVisibility(8);
            return;
        }
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.ad_disclaimer_height);
        int iMax = Math.max((int) (i11 * (Math.min(i12, 15) / 100.0f)), dimensionPixelOffset);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = iMax;
        setLayoutParams(layoutParams);
        setTextSize(iMax * (11.0f / dimensionPixelOffset));
    }
}
