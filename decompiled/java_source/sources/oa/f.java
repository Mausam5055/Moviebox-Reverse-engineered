package oa;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes5.dex */
public class f extends Property {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Matrix f70927a;

    public f() {
        super(Matrix.class, "imageMatrixProperty");
        this.f70927a = new Matrix();
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Matrix get(ImageView imageView) {
        this.f70927a.set(imageView.getImageMatrix());
        return this.f70927a;
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
