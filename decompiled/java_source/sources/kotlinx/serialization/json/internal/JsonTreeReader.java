package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.DeepRecursiveFunction;
import kotlin.DeepRecursiveKt;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes7.dex */
public final class JsonTreeReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f68283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f68284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f68285c;

    public JsonTreeReader(kotlinx.serialization.json.f configuration, a lexer) {
        Intrinsics.h(configuration, "configuration");
        Intrinsics.h(lexer, "lexer");
        this.f68283a = lexer;
        this.f68284b = configuration.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlinx.serialization.json.h f() {
        byte bM = this.f68283a.m();
        if (this.f68283a.E() == 4) {
            a.y(this.f68283a, "Unexpected leading comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        ArrayList arrayList = new ArrayList();
        while (this.f68283a.f()) {
            arrayList.add(e());
            bM = this.f68283a.m();
            if (bM != 4) {
                a aVar = this.f68283a;
                boolean z10 = bM == 9;
                int i11 = aVar.f68286a;
                if (!z10) {
                    a.y(aVar, "Expected end of the array or comma", i11, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            }
        }
        if (bM == 8) {
            this.f68283a.n((byte) 9);
        } else if (bM == 4) {
            a.y(this.f68283a, "Unexpected trailing comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        return new kotlinx.serialization.json.b(arrayList);
    }

    private final kotlinx.serialization.json.h g() {
        return (kotlinx.serialization.json.h) DeepRecursiveKt.b(new DeepRecursiveFunction(new JsonTreeReader$readDeepRecursive$1(this, null)), Unit.f67061a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:19:0x006c  */
    /* JADX WARN: Code duplicated, block: B:21:0x0070  */
    /* JADX WARN: Code duplicated, block: B:22:0x0077  */
    /* JADX WARN: Code duplicated, block: B:25:0x0095 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x0096  */
    /* JADX WARN: Code duplicated, block: B:29:0x00ad A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00af  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0096 -> B:27:0x00a0). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object h(kotlin.DeepRecursiveScope r21, kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.JsonTreeReader.h(kotlin.DeepRecursiveScope, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final kotlinx.serialization.json.h i() {
        byte bN = this.f68283a.n((byte) 6);
        if (this.f68283a.E() == 4) {
            a.y(this.f68283a, "Unexpected leading comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (this.f68283a.f()) {
            String strS = this.f68284b ? this.f68283a.s() : this.f68283a.q();
            this.f68283a.n((byte) 5);
            linkedHashMap.put(strS, e());
            bN = this.f68283a.m();
            if (bN != 4) {
                if (bN == 7) {
                    break;
                }
                a.y(this.f68283a, "Expected end of the object or comma", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
        }
        if (bN == 6) {
            this.f68283a.n((byte) 7);
        } else if (bN == 4) {
            a.y(this.f68283a, "Unexpected trailing comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        return new JsonObject(linkedHashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlinx.serialization.json.u j(boolean z10) {
        String strS = (this.f68284b || !z10) ? this.f68283a.s() : this.f68283a.q();
        return (z10 || !Intrinsics.c(strS, "null")) ? new kotlinx.serialization.json.o(strS, z10) : JsonNull.f68226c;
    }

    public final kotlinx.serialization.json.h e() {
        byte bE = this.f68283a.E();
        if (bE == 1) {
            return j(true);
        }
        if (bE == 0) {
            return j(false);
        }
        if (bE == 6) {
            int i11 = this.f68285c + 1;
            this.f68285c = i11;
            kotlinx.serialization.json.h hVarG = i11 == 200 ? g() : i();
            this.f68285c--;
            return hVarG;
        }
        if (bE == 8) {
            return f();
        }
        a.y(this.f68283a, "Cannot begin reading element, unexpected token: " + ((int) bE), 0, null, 6, null);
        throw new KotlinNothingValueException();
    }
}
