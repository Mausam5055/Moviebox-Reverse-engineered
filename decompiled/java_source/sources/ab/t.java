package ab;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes4.dex */
class t extends r {

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (t.this.f601e.isEmpty()) {
                return;
            }
            outline.setPath(t.this.f601e);
        }
    }

    t(View view) {
        l(view);
    }

    private void l(View view) {
        view.setOutlineProvider(new a());
    }

    @Override // ab.r
    void b(View view) {
        view.setClipToOutline(!j());
        if (j()) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    @Override // ab.r
    boolean j() {
        return this.f597a;
    }
}
