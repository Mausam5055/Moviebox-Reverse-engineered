package l10;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.script.ScriptEngineFactory;

/* JADX INFO: loaded from: classes7.dex */
public class b implements ScriptEngineFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List f68477a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List f68478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final List f68479c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final a f68480d;

    static {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add("mvel");
        List listUnmodifiableList = Collections.unmodifiableList(arrayList);
        f68477a = listUnmodifiableList;
        f68478b = listUnmodifiableList;
        ArrayList arrayList2 = new ArrayList(1);
        arrayList2.add("application/x-mvel");
        f68479c = Collections.unmodifiableList(arrayList2);
        f68480d = new a();
    }
}
