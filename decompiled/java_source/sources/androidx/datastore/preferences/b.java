package androidx.datastore.preferences;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import java.io.InputStream;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f8649a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a(InputStream input) throws CorruptionException {
            Intrinsics.h(input, "input");
            try {
                d dVarR = d.R(input);
                Intrinsics.g(dVarR, "{\n                Prefer…From(input)\n            }");
                return dVarR;
            } catch (InvalidProtocolBufferException e11) {
                throw new CorruptionException("Unable to parse preferences proto.", e11);
            }
        }
    }
}
