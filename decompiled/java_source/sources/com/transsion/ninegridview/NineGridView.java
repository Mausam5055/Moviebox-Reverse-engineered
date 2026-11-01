package com.transsion.ninegridview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.blankj.utilcode.util.a0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class NineGridView extends ViewGroup {
    public static final int MODE_FILL = 0;
    public static final int MODE_GRID = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static pn.b f47628m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f47629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f47630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f47631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f47632d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f47633e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f47634f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f47635g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f47636h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f47637i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List f47638j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List f47639k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private NineGridViewAdapter f47640l;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f47641a;

        a(int i11) {
            this.f47641a = i11;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NineGridViewAdapter nineGridViewAdapter = NineGridView.this.f47640l;
            Context context = NineGridView.this.getContext();
            NineGridView nineGridView = NineGridView.this;
            nineGridViewAdapter.onImageItemClick(context, nineGridView, this.f47641a, nineGridView.f47640l.getImageInfo());
        }
    }

    public NineGridView(Context context) {
        this(context, null);
    }

    public NineGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NineGridView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f47629a = 250;
        this.f47630b = 1.0f;
        this.f47631c = 9;
        this.f47632d = 3;
        this.f47633e = 0;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.f47632d = (int) TypedValue.applyDimension(1, this.f47632d, displayMetrics);
        this.f47629a = (int) TypedValue.applyDimension(1, this.f47629a, displayMetrics);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.NineGridView);
        this.f47632d = (int) typedArrayObtainStyledAttributes.getDimension(R$styleable.NineGridView_ngv_gridSpacing, this.f47632d);
        this.f47629a = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.NineGridView_ngv_singleImageSize, this.f47629a);
        this.f47630b = typedArrayObtainStyledAttributes.getFloat(R$styleable.NineGridView_ngv_singleImageRatio, this.f47630b);
        this.f47631c = typedArrayObtainStyledAttributes.getInt(R$styleable.NineGridView_ngv_maxSize, this.f47631c);
        this.f47633e = typedArrayObtainStyledAttributes.getInt(R$styleable.NineGridView_ngv_mode, this.f47633e);
        typedArrayObtainStyledAttributes.recycle();
        this.f47638j = new ArrayList();
    }

    private ImageView b(int i11) {
        if (i11 < this.f47638j.size()) {
            return (ImageView) this.f47638j.get(i11);
        }
        ImageView imageViewGenerateImageView = this.f47640l.generateImageView(getContext());
        imageViewGenerateImageView.setOnClickListener(new a(i11));
        this.f47638j.add(imageViewGenerateImageView);
        return imageViewGenerateImageView;
    }

    public static pn.b getImageLoader() {
        return f47628m;
    }

    public static void setImageLoader(pn.b bVar) {
        f47628m = bVar;
    }

    public int getMaxSize() {
        return this.f47631c;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        List list = this.f47639k;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i15 = 0; i15 < size; i15++) {
            ImageView imageView = (ImageView) getChildAt(i15);
            int i16 = this.f47634f;
            int paddingLeft = ((this.f47636h + this.f47632d) * (i15 % i16)) + getPaddingLeft();
            int paddingTop = ((this.f47637i + this.f47632d) * (i15 / i16)) + getPaddingTop();
            imageView.layout(paddingLeft, paddingTop, this.f47636h + paddingLeft, this.f47637i + paddingTop);
            pn.b bVar = f47628m;
            if (bVar != null) {
                bVar.a(getContext(), imageView, ((ImageInfo) this.f47639k.get(i15)).bigImageUrl, this.f47636h, this.f47637i, ((ImageInfo) this.f47639k.get(i15)).thumbnailUrl);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0071  */
    /* JADX WARN: Code duplicated, block: B:18:0x0084  */
    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        int iMin;
        int i13;
        int i14;
        super.onMeasure(i11, i12);
        int size = View.MeasureSpec.getSize(i11);
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        List list = this.f47639k;
        int paddingTop = 0;
        if (list != null && list.size() > 0) {
            if (this.f47639k.size() == 1) {
                ImageInfo imageInfo = (ImageInfo) this.f47639k.get(0);
                float f11 = imageInfo.imageViewWidth;
                if (f11 > 0.0f) {
                    float f12 = imageInfo.imageViewHeight;
                    if (f12 <= 0.0f) {
                        iMin = Math.min(this.f47629a, paddingLeft);
                        this.f47636h = iMin;
                        i13 = (int) (iMin / this.f47630b);
                        this.f47637i = i13;
                        i14 = this.f47629a;
                        if (i13 > i14) {
                            this.f47636h = (int) (iMin * ((i14 * 1.0f) / i13));
                            this.f47637i = i14;
                        }
                    } else if (f11 > f12) {
                        int iMin2 = Math.min(a0.a(216.0f), (int) imageInfo.imageViewWidth);
                        this.f47636h = iMin2;
                        this.f47637i = (iMin2 * ((int) imageInfo.imageViewHeight)) / ((int) imageInfo.imageViewWidth);
                    } else {
                        int iMin3 = Math.min(a0.a(216.0f), (int) imageInfo.imageViewHeight);
                        this.f47637i = iMin3;
                        this.f47636h = (iMin3 * ((int) imageInfo.imageViewWidth)) / ((int) imageInfo.imageViewHeight);
                    }
                } else {
                    iMin = Math.min(this.f47629a, paddingLeft);
                    this.f47636h = iMin;
                    i13 = (int) (iMin / this.f47630b);
                    this.f47637i = i13;
                    i14 = this.f47629a;
                    if (i13 > i14) {
                        this.f47636h = (int) (iMin * ((i14 * 1.0f) / i13));
                        this.f47637i = i14;
                    }
                }
            } else {
                int i15 = (paddingLeft - (this.f47632d * 2)) / 3;
                this.f47637i = i15;
                this.f47636h = i15;
            }
            int i16 = this.f47636h;
            int i17 = this.f47634f;
            size = (i16 * i17) + (this.f47632d * (i17 - 1)) + getPaddingLeft() + getPaddingRight();
            int i18 = this.f47637i;
            int i19 = this.f47635g;
            paddingTop = (i18 * i19) + (this.f47632d * (i19 - 1)) + getPaddingTop() + getPaddingBottom();
        }
        setMeasuredDimension(size, paddingTop);
    }

    public void setAdapter(@NonNull NineGridViewAdapter nineGridViewAdapter) {
        this.f47640l = nineGridViewAdapter;
        List<ImageInfo> imageInfo = nineGridViewAdapter.getImageInfo();
        if (imageInfo == null || imageInfo.isEmpty()) {
            setVisibility(8);
            return;
        }
        setVisibility(0);
        int size = imageInfo.size();
        int i11 = this.f47631c;
        if (i11 > 0 && size > i11) {
            imageInfo = imageInfo.subList(0, i11);
            size = imageInfo.size();
        }
        this.f47635g = (size / 3) + (size % 3 == 0 ? 0 : 1);
        this.f47634f = 3;
        if (this.f47633e == 1 && size == 4) {
            this.f47635g = 2;
            this.f47634f = 2;
        }
        List list = this.f47639k;
        if (list == null) {
            for (int i12 = 0; i12 < size; i12++) {
                ImageView imageViewB = b(i12);
                if (imageViewB == null) {
                    return;
                }
                addView(imageViewB, generateDefaultLayoutParams());
            }
        } else {
            int size2 = list.size();
            if (size2 > size) {
                removeViews(size, size2 - size);
            } else if (size2 < size) {
                while (size2 < size) {
                    ImageView imageViewB2 = b(size2);
                    if (imageViewB2 == null) {
                        return;
                    }
                    addView(imageViewB2, generateDefaultLayoutParams());
                    size2++;
                }
            }
        }
        int size3 = nineGridViewAdapter.getImageInfo().size();
        int i13 = this.f47631c;
        if (size3 > i13) {
            View childAt = getChildAt(i13 - 1);
            if (childAt instanceof NineGridViewWrapper) {
                ((NineGridViewWrapper) childAt).setMoreNum(nineGridViewAdapter.getImageInfo().size() - this.f47631c);
            }
        }
        this.f47639k = imageInfo;
        requestLayout();
    }

    public void setGridSpacing(int i11) {
        this.f47632d = i11;
    }

    public void setMaxSize(int i11) {
        this.f47631c = i11;
    }

    public void setSingleImageRatio(float f11) {
        this.f47630b = f11;
    }

    public void setSingleImageSize(int i11) {
        this.f47629a = i11;
    }
}
