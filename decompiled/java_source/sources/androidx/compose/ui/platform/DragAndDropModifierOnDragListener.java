package androidx.compose.ui.platform;

import android.view.DragEvent;
import android.view.View;
import androidx.compose.ui.draganddrop.DragAndDropNode;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
final class DragAndDropModifierOnDragListener implements View.OnDragListener, androidx.compose.ui.draganddrop.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function3 f5633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DragAndDropNode f5634b = new DragAndDropNode(new Function1<androidx.compose.ui.draganddrop.b, androidx.compose.ui.draganddrop.f>() { // from class: androidx.compose.ui.platform.DragAndDropModifierOnDragListener$rootDragAndDropNode$1
        @Override // kotlin.jvm.functions.Function1
        public final androidx.compose.ui.draganddrop.f invoke(androidx.compose.ui.draganddrop.b bVar) {
            return null;
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.collection.b f5635c = new androidx.collection.b(0, 1, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.compose.ui.f f5636d = new androidx.compose.ui.node.l0() { // from class: androidx.compose.ui.platform.DragAndDropModifierOnDragListener$modifier$1
        public boolean equals(Object other) {
            return other == this;
        }

        public int hashCode() {
            return this.f5637b.f5634b.hashCode();
        }

        @Override // androidx.compose.ui.node.l0
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public DragAndDropNode a() {
            return this.f5637b.f5634b;
        }

        @Override // androidx.compose.ui.node.l0
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void i(DragAndDropNode node) {
        }
    };

    public DragAndDropModifierOnDragListener(Function3 function3) {
        this.f5633a = function3;
    }

    @Override // androidx.compose.ui.draganddrop.c
    public boolean a(androidx.compose.ui.draganddrop.d dVar) {
        return this.f5635c.contains(dVar);
    }

    @Override // androidx.compose.ui.draganddrop.c
    public void b(androidx.compose.ui.draganddrop.d dVar) {
        this.f5635c.add(dVar);
    }

    public androidx.compose.ui.f d() {
        return this.f5636d;
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(View view, DragEvent dragEvent) {
        androidx.compose.ui.draganddrop.b bVar = new androidx.compose.ui.draganddrop.b(dragEvent);
        switch (dragEvent.getAction()) {
            case 1:
                boolean zD1 = this.f5634b.D1(bVar);
                Iterator<E> it = this.f5635c.iterator();
                while (it.hasNext()) {
                    ((androidx.compose.ui.draganddrop.d) it.next()).B(bVar);
                }
                return zD1;
            case 2:
                this.f5634b.C(bVar);
                return false;
            case 3:
                return this.f5634b.k0(bVar);
            case 4:
                this.f5634b.Z0(bVar);
                return false;
            case 5:
                this.f5634b.a0(bVar);
                return false;
            case 6:
                this.f5634b.L(bVar);
                return false;
            default:
                return false;
        }
    }
}
