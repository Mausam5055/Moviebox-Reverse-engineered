package androidx.databinding;

import androidx.annotation.Nullable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ObservableField<T> extends b implements Serializable {
    static final long serialVersionUID = 1;
    private T mValue;

    public ObservableField() {
    }

    public ObservableField(T t11) {
        this.mValue = t11;
    }

    public ObservableField(i... iVarArr) {
        super(iVarArr);
    }

    @Nullable
    public T get() {
        return this.mValue;
    }

    public void set(T t11) {
        if (t11 != this.mValue) {
            this.mValue = t11;
            notifyChange();
        }
    }
}
