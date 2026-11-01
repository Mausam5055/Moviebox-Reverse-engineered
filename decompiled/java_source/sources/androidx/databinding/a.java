package androidx.databinding;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class a implements i {
    private transient l mCallbacks;

    @Override // androidx.databinding.i
    public void addOnPropertyChangedCallback(@NonNull i.a aVar) {
        synchronized (this) {
            try {
                if (this.mCallbacks == null) {
                    this.mCallbacks = new l();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.mCallbacks.a(aVar);
    }

    public void notifyChange() {
        synchronized (this) {
            try {
                l lVar = this.mCallbacks;
                if (lVar == null) {
                    return;
                }
                lVar.d(this, 0, null);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void notifyPropertyChanged(int i11) {
        synchronized (this) {
            try {
                l lVar = this.mCallbacks;
                if (lVar == null) {
                    return;
                }
                lVar.d(this, i11, null);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void removeOnPropertyChangedCallback(@NonNull i.a aVar) {
        synchronized (this) {
            try {
                l lVar = this.mCallbacks;
                if (lVar == null) {
                    return;
                }
                lVar.j(aVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
