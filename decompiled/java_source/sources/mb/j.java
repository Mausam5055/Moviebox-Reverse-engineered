package mb;

import com.google.firebase.components.ComponentRegistrar;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j f69464a = new j() { // from class: mb.i
        @Override // mb.j
        public final List a(ComponentRegistrar componentRegistrar) {
            return componentRegistrar.getComponents();
        }
    };

    List a(ComponentRegistrar componentRegistrar);
}
