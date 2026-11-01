package l1;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import androidx.core.util.i;
import androidx.emoji2.text.EmojiCompat;

/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f68464a;

    private static class a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextView f68465a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d f68466b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f68467c = true;

        a(TextView textView) {
            this.f68465a = textView;
            this.f68466b = new d(textView);
        }

        private InputFilter[] f(InputFilter[] inputFilterArr) {
            int length = inputFilterArr.length;
            for (InputFilter inputFilter : inputFilterArr) {
                if (inputFilter == this.f68466b) {
                    return inputFilterArr;
                }
            }
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length + 1];
            System.arraycopy(inputFilterArr, 0, inputFilterArr2, 0, length);
            inputFilterArr2[length] = this.f68466b;
            return inputFilterArr2;
        }

        private SparseArray g(InputFilter[] inputFilterArr) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i11 = 0; i11 < inputFilterArr.length; i11++) {
                InputFilter inputFilter = inputFilterArr[i11];
                if (inputFilter instanceof d) {
                    sparseArray.put(i11, inputFilter);
                }
            }
            return sparseArray;
        }

        private InputFilter[] h(InputFilter[] inputFilterArr) {
            SparseArray sparseArrayG = g(inputFilterArr);
            if (sparseArrayG.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArrayG.size()];
            int i11 = 0;
            for (int i12 = 0; i12 < length; i12++) {
                if (sparseArrayG.indexOfKey(i12) < 0) {
                    inputFilterArr2[i11] = inputFilterArr[i12];
                    i11++;
                }
            }
            return inputFilterArr2;
        }

        private TransformationMethod j(TransformationMethod transformationMethod) {
            return transformationMethod instanceof h ? ((h) transformationMethod).a() : transformationMethod;
        }

        private void k() {
            this.f68465a.setFilters(a(this.f68465a.getFilters()));
        }

        private TransformationMethod m(TransformationMethod transformationMethod) {
            return ((transformationMethod instanceof h) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new h(transformationMethod);
        }

        @Override // l1.f.b
        InputFilter[] a(InputFilter[] inputFilterArr) {
            return !this.f68467c ? h(inputFilterArr) : f(inputFilterArr);
        }

        @Override // l1.f.b
        public boolean b() {
            return this.f68467c;
        }

        @Override // l1.f.b
        void c(boolean z10) {
            if (z10) {
                l();
            }
        }

        @Override // l1.f.b
        void d(boolean z10) {
            this.f68467c = z10;
            l();
            k();
        }

        @Override // l1.f.b
        TransformationMethod e(TransformationMethod transformationMethod) {
            return this.f68467c ? m(transformationMethod) : j(transformationMethod);
        }

        void i(boolean z10) {
            this.f68467c = z10;
        }

        void l() {
            this.f68465a.setTransformationMethod(e(this.f68465a.getTransformationMethod()));
        }
    }

    static class b {
        b() {
        }

        abstract InputFilter[] a(InputFilter[] inputFilterArr);

        public abstract boolean b();

        abstract void c(boolean z10);

        abstract void d(boolean z10);

        abstract TransformationMethod e(TransformationMethod transformationMethod);
    }

    private static class c extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a f68468a;

        c(TextView textView) {
            this.f68468a = new a(textView);
        }

        private boolean f() {
            return !EmojiCompat.i();
        }

        @Override // l1.f.b
        InputFilter[] a(InputFilter[] inputFilterArr) {
            return f() ? inputFilterArr : this.f68468a.a(inputFilterArr);
        }

        @Override // l1.f.b
        public boolean b() {
            return this.f68468a.b();
        }

        @Override // l1.f.b
        void c(boolean z10) {
            if (f()) {
                return;
            }
            this.f68468a.c(z10);
        }

        @Override // l1.f.b
        void d(boolean z10) {
            if (f()) {
                this.f68468a.i(z10);
            } else {
                this.f68468a.d(z10);
            }
        }

        @Override // l1.f.b
        TransformationMethod e(TransformationMethod transformationMethod) {
            return f() ? transformationMethod : this.f68468a.e(transformationMethod);
        }
    }

    public f(TextView textView, boolean z10) {
        i.h(textView, "textView cannot be null");
        if (z10) {
            this.f68464a = new a(textView);
        } else {
            this.f68464a = new c(textView);
        }
    }

    public InputFilter[] a(InputFilter[] inputFilterArr) {
        return this.f68464a.a(inputFilterArr);
    }

    public boolean b() {
        return this.f68464a.b();
    }

    public void c(boolean z10) {
        this.f68464a.c(z10);
    }

    public void d(boolean z10) {
        this.f68464a.d(z10);
    }

    public TransformationMethod e(TransformationMethod transformationMethod) {
        return this.f68464a.e(transformationMethod);
    }
}
