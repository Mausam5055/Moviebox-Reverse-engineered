package mv;

import com.transsion.transfer.impl.entity.FileData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f70013a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List f70014b = new ArrayList();

    private a() {
    }

    private final List c(int i11) {
        List list = f70014b;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((FileData) obj).getState() == i11) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt.U0(arrayList);
    }

    public final void a(List data) {
        Object next;
        Intrinsics.h(data, "data");
        Iterator it = data.iterator();
        while (it.hasNext()) {
            FileData fileData = (FileData) it.next();
            Iterator it2 = f70014b.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!Intrinsics.c(((FileData) next).getFileRemotePath(), fileData.getFileRemotePath()));
            if (next == null) {
                f70014b.add(fileData);
            }
        }
    }

    public final void b() {
        f70014b.clear();
    }

    public final List d() {
        return f70014b;
    }

    public final List e() {
        return CollectionsKt.U0(CollectionsKt.B0(c(3), c(5)));
    }

    public final List f() {
        return CollectionsKt.U0(c(2));
    }

    public final List g() {
        return CollectionsKt.U0(c(0));
    }

    public final boolean h() {
        return f70014b.isEmpty();
    }
}
