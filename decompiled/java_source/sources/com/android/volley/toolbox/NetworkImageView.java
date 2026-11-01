package com.android.volley.toolbox;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.android.volley.VolleyError;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f19274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f19275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Drawable f19276c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bitmap f19277d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f19278e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f19279f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bitmap f19280g;

    /* JADX INFO: renamed from: com.android.volley.toolbox.NetworkImageView$1, reason: invalid class name */
    class AnonymousClass1 implements h.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f19281a;

        AnonymousClass1(boolean z10) {
            this.f19281a = z10;
        }

        public void a(h.b bVar, boolean z10) {
            if (!z10 || !this.f19281a) {
                throw null;
            }
            NetworkImageView.this.post(new Runnable(bVar) { // from class: com.android.volley.toolbox.NetworkImageView.1.1
                final /* synthetic */ h.b val$response;

                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass1.this.a(null, false);
                }
            });
        }

        @Override // com.android.volley.i.a
        public void onErrorResponse(VolleyError volleyError) {
            if (NetworkImageView.this.f19278e != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f19278e);
            } else if (NetworkImageView.this.f19279f != null) {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageDrawable(networkImageView2.f19279f);
            } else if (NetworkImageView.this.f19280g != null) {
                NetworkImageView networkImageView3 = NetworkImageView.this;
                networkImageView3.setImageBitmap(networkImageView3.f19280g);
            }
        }
    }

    public NetworkImageView(Context context) {
        this(context, null);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    private void e() {
        int i11 = this.f19275b;
        if (i11 != 0) {
            setImageResource(i11);
            return;
        }
        Drawable drawable = this.f19276c;
        if (drawable != null) {
            setImageDrawable(drawable);
            return;
        }
        Bitmap bitmap = this.f19277d;
        if (bitmap != null) {
            setImageBitmap(bitmap);
        } else {
            setImageBitmap(null);
        }
    }

    void d(boolean z10) {
        boolean z11;
        boolean z12;
        int width = getWidth();
        int height = getHeight();
        getScaleType();
        if (getLayoutParams() != null) {
            z11 = getLayoutParams().width == -2;
            z12 = getLayoutParams().height == -2;
        } else {
            z11 = false;
            z12 = false;
        }
        boolean z13 = z11 && z12;
        if (width == 0 && height == 0 && !z13) {
            return;
        }
        if (TextUtils.isEmpty(this.f19274a)) {
            e();
        } else {
            new AnonymousClass1(z10);
            throw null;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        d(true);
    }

    public void setDefaultImageBitmap(Bitmap bitmap) {
        this.f19275b = 0;
        this.f19276c = null;
        this.f19277d = bitmap;
    }

    public void setDefaultImageDrawable(@Nullable Drawable drawable) {
        this.f19275b = 0;
        this.f19277d = null;
        this.f19276c = drawable;
    }

    public void setDefaultImageResId(int i11) {
        this.f19277d = null;
        this.f19276c = null;
        this.f19275b = i11;
    }

    public void setErrorImageBitmap(Bitmap bitmap) {
        this.f19278e = 0;
        this.f19279f = null;
        this.f19280g = bitmap;
    }

    public void setErrorImageDrawable(@Nullable Drawable drawable) {
        this.f19278e = 0;
        this.f19280g = null;
        this.f19279f = drawable;
    }

    public void setErrorImageResId(int i11) {
        this.f19280g = null;
        this.f19279f = null;
        this.f19278e = i11;
    }

    public void setImageUrl(String str, h hVar) {
        n.a();
        this.f19274a = str;
        d(false);
    }
}
