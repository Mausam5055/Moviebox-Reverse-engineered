package yq;

import com.google.gson.JsonObject;
import com.transsion.search.bean.GoogleSuggestResponse;
import com.transsion.search.bean.SearchSuggestEntity;
import com.transsion.search.bean.SuggestEntity;
import com.transsion.search.net.RequestJoinGroupEntity;
import com.transsion.search.net.RequestSearchEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes6.dex */
public final class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f79053b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f79054a = LazyKt.b(new Function0() { // from class: yq.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return j.j();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static final class b implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f79055a;

        b(String str) {
            this.f79055a = str;
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SearchSuggestEntity apply(ResponseBody body) {
            Intrinsics.h(body, "body");
            GoogleSuggestResponse googleSuggestResponseE = yq.b.f79047a.e(body.string());
            String keyword = googleSuggestResponseE.getKeyword();
            String str = this.f79055a;
            if (StringsKt.q0(keyword)) {
                keyword = str;
            }
            List<String> suggestions = googleSuggestResponseE.getSuggestions();
            ArrayList arrayList = new ArrayList(CollectionsKt.v(suggestions, 10));
            Iterator<T> it = suggestions.iterator();
            while (it.hasNext()) {
                arrayList.add(new SuggestEntity(0, (String) it.next(), null, null, null));
            }
            return new SearchSuggestEntity(arrayList, keyword, "");
        }
    }

    private final String c() {
        return vg.a.f77324a.a();
    }

    private final g f() {
        return (g) this.f79054a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g j() {
        return (g) zg.c.f79414e.a().h(g.class);
    }

    public final io.reactivex.rxjava3.core.j b(String keyword) {
        Intrinsics.h(keyword, "keyword");
        io.reactivex.rxjava3.core.j jVarU = f.f79048a.f(keyword).u(new b(keyword));
        Intrinsics.g(jVarU, "map(...)");
        return jVarU;
    }

    public final io.reactivex.rxjava3.core.j d() {
        return g.a.a(f(), 1, 0, 2, null);
    }

    public final io.reactivex.rxjava3.core.j e(String keyword) {
        Intrinsics.h(keyword, "keyword");
        return g.a.b(f(), keyword, 0, 0, 6, null);
    }

    public final io.reactivex.rxjava3.core.j g(RequestJoinGroupEntity entity) {
        Intrinsics.h(entity, "entity");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("groupId", entity.getGroupId());
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string = jsonObject.toString();
        Intrinsics.g(string, "toString(...)");
        return f().b(c(), companion.create(string, MediaType.INSTANCE.parse("application/json")));
    }

    public final io.reactivex.rxjava3.core.j h(RequestSearchEntity entity) {
        Intrinsics.h(entity, "entity");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("page", Integer.valueOf(entity.getPage()));
        jsonObject.addProperty("keyword", entity.getKeyword());
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string = jsonObject.toString();
        Intrinsics.g(string, "toString(...)");
        companion.create(string, MediaType.INSTANCE.parse("application/json"));
        return f().a(c(), entity.getPage(), entity.getKeyword());
    }

    public final Object i(RequestSearchEntity requestSearchEntity, Continuation continuation) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("page", Boxing.d(requestSearchEntity.getPage()));
        jsonObject.addProperty("perPage", Boxing.d(requestSearchEntity.getPerPage()));
        jsonObject.addProperty("keyword", requestSearchEntity.getKeyword());
        jsonObject.addProperty("subjectType", Boxing.d(requestSearchEntity.getSubjectType()));
        jsonObject.addProperty("resultMode", Boxing.d(1));
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string = jsonObject.toString();
        Intrinsics.g(string, "toString(...)");
        return f().e(c(), companion.create(string, MediaType.INSTANCE.parse("application/json")), continuation);
    }
}
