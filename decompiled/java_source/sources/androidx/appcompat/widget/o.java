package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f2083a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextClassifier f2084b;

    private static final class a {
        @NonNull
        static TextClassifier a(@NonNull TextView textView) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) textView.getContext().getSystemService(TextClassificationManager.class);
            return textClassificationManager != null ? textClassificationManager.getTextClassifier() : TextClassifier.NO_OP;
        }
    }

    o(TextView textView) {
        this.f2083a = (TextView) androidx.core.util.i.g(textView);
    }

    public TextClassifier a() {
        TextClassifier textClassifier = this.f2084b;
        return textClassifier == null ? a.a(this.f2083a) : textClassifier;
    }

    public void b(TextClassifier textClassifier) {
        this.f2084b = textClassifier;
    }
}
