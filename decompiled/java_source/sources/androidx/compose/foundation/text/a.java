package androidx.compose.foundation.text;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final void a(int i11, int i12) {
        if (i11 <= 0 || i12 <= 0) {
            throw new IllegalArgumentException(("both minLines " + i11 + " and maxLines " + i12 + " must be greater than zero").toString());
        }
        if (i11 <= i12) {
            return;
        }
        throw new IllegalArgumentException(("minLines " + i11 + " must be less than or equal to maxLines " + i12).toString());
    }
}
