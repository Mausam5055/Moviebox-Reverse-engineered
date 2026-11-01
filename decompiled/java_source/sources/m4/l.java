package m4;

import android.graphics.Path;
import com.airbnb.lottie.model.content.MergePaths;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
public class l implements m, j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f69247d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final MergePaths f69249f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f69244a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f69245b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Path f69246c = new Path();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f69248e = new ArrayList();

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f69250a;

        static {
            int[] iArr = new int[MergePaths.MergePathsMode.values().length];
            f69250a = iArr;
            try {
                iArr[MergePaths.MergePathsMode.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69250a[MergePaths.MergePathsMode.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69250a[MergePaths.MergePathsMode.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f69250a[MergePaths.MergePathsMode.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f69250a[MergePaths.MergePathsMode.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public l(MergePaths mergePaths) {
        this.f69247d = mergePaths.c();
        this.f69249f = mergePaths;
    }

    private void a() {
        for (int i11 = 0; i11 < this.f69248e.size(); i11++) {
            this.f69246c.addPath(((m) this.f69248e.get(i11)).getPath());
        }
    }

    private void b(Path.Op op2) {
        this.f69245b.reset();
        this.f69244a.reset();
        for (int size = this.f69248e.size() - 1; size >= 1; size--) {
            m mVar = (m) this.f69248e.get(size);
            if (mVar instanceof d) {
                d dVar = (d) mVar;
                List listK = dVar.k();
                for (int size2 = listK.size() - 1; size2 >= 0; size2--) {
                    Path path = ((m) listK.get(size2)).getPath();
                    path.transform(dVar.l());
                    this.f69245b.addPath(path);
                }
            } else {
                this.f69245b.addPath(mVar.getPath());
            }
        }
        m mVar2 = (m) this.f69248e.get(0);
        if (mVar2 instanceof d) {
            d dVar2 = (d) mVar2;
            List listK2 = dVar2.k();
            for (int i11 = 0; i11 < listK2.size(); i11++) {
                Path path2 = ((m) listK2.get(i11)).getPath();
                path2.transform(dVar2.l());
                this.f69244a.addPath(path2);
            }
        } else {
            this.f69244a.set(mVar2.getPath());
        }
        this.f69246c.op(this.f69244a, this.f69245b, op2);
    }

    @Override // m4.c
    public void c(List list, List list2) {
        for (int i11 = 0; i11 < this.f69248e.size(); i11++) {
            ((m) this.f69248e.get(i11)).c(list, list2);
        }
    }

    @Override // m4.j
    public void g(ListIterator listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            c cVar = (c) listIterator.previous();
            if (cVar instanceof m) {
                this.f69248e.add((m) cVar);
                listIterator.remove();
            }
        }
    }

    @Override // m4.m
    public Path getPath() {
        this.f69246c.reset();
        if (this.f69249f.d()) {
            return this.f69246c;
        }
        int i11 = a.f69250a[this.f69249f.b().ordinal()];
        if (i11 == 1) {
            a();
        } else if (i11 == 2) {
            b(Path.Op.UNION);
        } else if (i11 == 3) {
            b(Path.Op.REVERSE_DIFFERENCE);
        } else if (i11 == 4) {
            b(Path.Op.INTERSECT);
        } else if (i11 == 5) {
            b(Path.Op.XOR);
        }
        return this.f69246c;
    }
}
