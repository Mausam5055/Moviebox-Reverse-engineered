package com.transsion.baseui.widget.jumpingbeans;

import android.text.SpannableStringBuilder;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JumpingBeansSpan[] f43652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference f43653b;

    /* JADX INFO: renamed from: com.transsion.baseui.widget.jumpingbeans.a$a, reason: collision with other inner class name */
    public static class C0612a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextView f43654a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f43655b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f43656c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f43657d = 0.65f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f43658e = 1300;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f43659f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private CharSequence f43660g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f43661h;

        C0612a(TextView textView) {
            this.f43654a = textView;
        }

        private JumpingBeansSpan[] b(SpannableStringBuilder spannableStringBuilder) {
            JumpingBeansSpan[] jumpingBeansSpanArr = {new JumpingBeansSpan(this.f43654a, this.f43658e, 0, 0, this.f43657d)};
            spannableStringBuilder.setSpan(jumpingBeansSpanArr[0], this.f43655b, this.f43656c, 33);
            return jumpingBeansSpanArr;
        }

        private JumpingBeansSpan[] c(SpannableStringBuilder spannableStringBuilder) {
            if (this.f43659f == -1) {
                this.f43659f = this.f43658e / ((this.f43656c - this.f43655b) * 3);
            }
            int i11 = this.f43656c;
            int i12 = this.f43655b;
            JumpingBeansSpan[] jumpingBeansSpanArr = new JumpingBeansSpan[i11 - i12];
            while (i12 < this.f43656c) {
                JumpingBeansSpan jumpingBeansSpan = new JumpingBeansSpan(this.f43654a, this.f43658e, i12 - this.f43655b, this.f43659f, this.f43657d);
                int i13 = i12 + 1;
                spannableStringBuilder.setSpan(jumpingBeansSpan, i12, i13, 33);
                jumpingBeansSpanArr[i12 - this.f43655b] = jumpingBeansSpan;
                i12 = i13;
            }
            return jumpingBeansSpanArr;
        }

        private static CharSequence d(int i11, int i12, CharSequence charSequence) {
            if (charSequence == null) {
                throw new NullPointerException("The textView text must not be null");
            }
            if (i12 < i11) {
                throw new IllegalArgumentException("The start position must be smaller than the end position");
            }
            if (i11 < 0) {
                throw new IndexOutOfBoundsException("The start position must be non-negative");
            }
            if (i12 <= charSequence.length()) {
                return charSequence;
            }
            throw new IndexOutOfBoundsException("The end position must be smaller than the text length");
        }

        public a a() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f43660g);
            JumpingBeansSpan[] jumpingBeansSpanArrC = this.f43661h ? c(spannableStringBuilder) : b(spannableStringBuilder);
            this.f43654a.setText(spannableStringBuilder);
            return new a(jumpingBeansSpanArrC, this.f43654a);
        }

        public C0612a e(int i11, int i12) {
            CharSequence text = this.f43654a.getText();
            d(i11, i12, text);
            this.f43660g = text;
            this.f43661h = true;
            this.f43655b = i11;
            this.f43656c = i12;
            return this;
        }

        public C0612a f(float f11) {
            if (f11 <= 0.0f || f11 > 1.0f) {
                throw new IllegalArgumentException("The animated range must be in the (0, 1] range");
            }
            this.f43657d = f11;
            return this;
        }

        public C0612a g(boolean z10) {
            this.f43661h = z10;
            return this;
        }

        public C0612a h(int i11) {
            if (i11 < 1) {
                throw new IllegalArgumentException("The loop duration must be bigger than zero");
            }
            this.f43658e = i11;
            return this;
        }

        public C0612a i(int i11) {
            if (i11 < 0) {
                throw new IllegalArgumentException("The wave char offset must be non-negative");
            }
            this.f43659f = i11;
            return this;
        }
    }

    private a(JumpingBeansSpan[] jumpingBeansSpanArr, TextView textView) {
        this.f43652a = jumpingBeansSpanArr;
        this.f43653b = new WeakReference(textView);
    }

    public static C0612a a(TextView textView) {
        return new C0612a(textView);
    }
}
