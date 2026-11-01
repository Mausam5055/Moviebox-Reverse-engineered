package m4;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f69181a = new ArrayList();

    void a(u uVar) {
        this.f69181a.add(uVar);
    }

    public void b(Path path) {
        for (int size = this.f69181a.size() - 1; size >= 0; size--) {
            v4.l.b(path, (u) this.f69181a.get(size));
        }
    }
}
