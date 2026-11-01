package androidx.media3.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SubtitleView extends FrameLayout {
    public static final float DEFAULT_BOTTOM_PADDING_FRACTION = 0.08f;
    public static final float DEFAULT_TEXT_SIZE_FRACTION = 0.0533f;
    public static final int VIEW_TYPE_CANVAS = 1;
    public static final int VIEW_TYPE_WEB = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f13597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f13598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f13599c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f13600d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f13601e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f13602f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f13603g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f13604h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f13605i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f13606j;

    interface a {
        void a(List list, b bVar, float f11, int i11, float f12);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    public SubtitleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13597a = Collections.emptyList();
        this.f13598b = b.f13631g;
        this.f13599c = 0;
        this.f13600d = 0.0533f;
        this.f13601e = 0.08f;
        this.f13602f = true;
        this.f13603g = true;
        androidx.media3.ui.a aVar = new androidx.media3.ui.a(context);
        this.f13605i = aVar;
        this.f13606j = aVar;
        addView(aVar);
        this.f13604h = 1;
    }

    private u1.a a(u1.a aVar) {
        u1.a.b bVarA = aVar.a();
        if (!this.f13602f) {
            x0.e(bVarA);
        } else if (!this.f13603g) {
            x0.f(bVarA);
        }
        return bVarA.a();
    }

    private void b(int i11, float f11) {
        this.f13599c = i11;
        this.f13600d = f11;
        c();
    }

    private void c() {
        this.f13605i.a(getCuesWithStylingPreferencesApplied(), this.f13598b, this.f13600d, this.f13599c, this.f13601e);
    }

    private List<u1.a> getCuesWithStylingPreferencesApplied() {
        if (this.f13602f && this.f13603g) {
            return this.f13597a;
        }
        ArrayList arrayList = new ArrayList(this.f13597a.size());
        for (int i11 = 0; i11 < this.f13597a.size(); i11++) {
            arrayList.add(a((u1.a) this.f13597a.get(i11)));
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private b getUserCaptionStyle() {
        if (isInEditMode()) {
            return b.f13631g;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        return (captioningManager == null || !captioningManager.isEnabled()) ? b.f13631g : b.a(captioningManager.getUserStyle());
    }

    private <T extends View & a> void setView(T t11) {
        removeView(this.f13606j);
        View view = this.f13606j;
        if (view instanceof b1) {
            ((b1) view).g();
        }
        this.f13606j = t11;
        this.f13605i = t11;
        addView(t11);
    }

    public void setApplyEmbeddedFontSizes(boolean z10) {
        this.f13603g = z10;
        c();
    }

    public void setApplyEmbeddedStyles(boolean z10) {
        this.f13602f = z10;
        c();
    }

    public void setBottomPaddingFraction(float f11) {
        this.f13601e = f11;
        c();
    }

    public void setCues(@Nullable List<u1.a> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f13597a = list;
        c();
    }

    public void setFixedTextSize(int i11, float f11) {
        Context context = getContext();
        b(2, TypedValue.applyDimension(i11, f11, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    public void setFractionalTextSize(float f11) {
        setFractionalTextSize(f11, false);
    }

    public void setFractionalTextSize(float f11, boolean z10) {
        b(z10 ? 1 : 0, f11);
    }

    public void setStyle(b bVar) {
        this.f13598b = bVar;
        c();
    }

    public void setUserDefaultStyle() {
        setStyle(getUserCaptionStyle());
    }

    public void setUserDefaultTextSize() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public void setViewType(int i11) {
        if (this.f13604h == i11) {
            return;
        }
        if (i11 == 1) {
            setView(new androidx.media3.ui.a(getContext()));
        } else {
            if (i11 != 2) {
                throw new IllegalArgumentException();
            }
            setView(new b1(getContext()));
        }
        this.f13604h = i11;
    }
}
