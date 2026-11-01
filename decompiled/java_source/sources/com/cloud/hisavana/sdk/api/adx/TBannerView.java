package com.cloud.hisavana.sdk.api.adx;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.R$styleable;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.p3;
import com.cloud.hisavana.sdk.q3;

/* JADX INFO: loaded from: classes3.dex */
public final class TBannerView extends ViewApi {
    public int autoRefreshNum;
    public long lastestAutoRefreshTs;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Integer f21578m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f21579n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f21580o;

    public TBannerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TBannerView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        String string = null;
        this.f21578m = null;
        this.lastestAutoRefreshTs = 0L;
        this.autoRefreshNum = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AdBannerView);
        for (int i12 = 0; i12 < typedArrayObtainStyledAttributes.getIndexCount(); i12++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i12);
            if (index == R$styleable.AdBannerView_placementId) {
                string = typedArrayObtainStyledAttributes.getString(index);
            }
        }
        if (typedArrayObtainStyledAttributes.getIndexCount() > 0) {
            e4.b().d("ssp", "placementId=" + string);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public TBannerView(Context context, String str) {
        super(context, str);
        this.f21578m = null;
        this.lastestAutoRefreshTs = 0L;
        this.autoRefreshNum = 1;
    }

    @Nullable
    public Integer getCloseTypeUsedForTrack() {
        return this.f21578m;
    }

    public void loadAd() {
        this.autoRefreshNum = 1;
        loadAdFromAutoRefresh(false);
    }

    public void loadAdFromAutoRefresh(boolean z10) {
        String strN = "";
        if (z10) {
            try {
                G g11 = this.f21589a;
                if (g11 != null && (g11 instanceof p3)) {
                    p3 p3Var = (p3) g11;
                    try {
                        q3 q3VarP = g11.p();
                        if (q3VarP != null) {
                            strN = q3VarP.n();
                        }
                    } catch (Throwable unused) {
                    }
                    long j11 = p3Var.f22837p;
                    long jIntValue = p3Var.f22838q.intValue();
                    if (this.autoRefreshNum > jIntValue) {
                        e4.b().d("ssp", "autoRefreshNum > autoCarouselCount, returnautoRefreshNum->" + this.autoRefreshNum + "autoCarouselCount->" + jIntValue);
                        return;
                    }
                    if (this.lastestAutoRefreshTs != 0 && j11 != 0) {
                        long jCurrentTimeMillis = System.currentTimeMillis() - this.lastestAutoRefreshTs;
                        if (jCurrentTimeMillis < j11) {
                            e4.b().d("ssp", "loadNextAD auto refresh is so quickly,return interval->" + jCurrentTimeMillis + "autoRefreshTs->" + j11);
                            return;
                        }
                    }
                    this.lastestAutoRefreshTs = System.currentTimeMillis();
                    this.autoRefreshNum++;
                }
            } catch (Throwable unused2) {
            }
        }
        if (b()) {
            p3 p3Var2 = new p3(new q3.b(strN).i(2).e(this.f21590b).r(this.f21591c).l(this.f21592d).j(this.f21593e).c(this.f21598j).o(this.f21595g).v(this.f21596h).m(this.f21580o).s(this.f21579n).f(z10).b(this.f21597i).g());
            p3Var2.I(this);
            p3Var2.g(new ViewApi.a(this));
            p3Var2.N(z10);
        }
    }

    public void setCloseDirectlyWithoutJumping(boolean z10) {
        this.f21580o = z10;
    }

    public void setCloseTypeUsedForTrack(Integer num) {
        this.f21578m = num;
    }

    public void setHideAdCloseView(boolean z10) {
        this.f21579n = z10;
    }

    public void show() {
        G g11 = this.f21589a;
        if (g11 instanceof p3) {
            try {
                this.f21599k.add(g11);
            } catch (Throwable unused) {
            }
            ((p3) this.f21589a).M(this);
        }
    }
}
