package fq;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import aq.c;
import com.transsion.room.activity.RoomDetailActivity;
import com.transsion.room.api.IRoomApi;
import com.transsion.room.api.RoomsViewType;
import com.transsion.room.helper.LocationPlaceHelper;
import com.transsion.room.helper.e;
import com.transsion.room.widget.RecommendRoomsView;
import com.transsion.room.widget.SubjectDetailRoomsView;
import com.transsion.room.widget.TrendingRoomsView;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes.dex */
public class a implements IRoomApi {

    /* JADX INFO: renamed from: fq.a$a, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes6.dex */
    public /* synthetic */ class C0762a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62455a;

        static {
            int[] iArr = new int[RoomsViewType.values().length];
            try {
                iArr[RoomsViewType.TYPE_ROOM_HOME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RoomsViewType.TYPE_TRENDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RoomsViewType.TYPE_SUBJECT_DETAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f62455a = iArr;
        }
    }

    @Override // com.transsion.room.api.IRoomApi
    public void a(FragmentActivity activity, boolean z10, Function1 callback) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(callback, "callback");
        LocationPlaceHelper.f51610a.t(activity, z10, callback);
    }

    @Override // com.transsion.room.api.IRoomApi
    public void b(FragmentActivity activity, Function1 callback) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(callback, "callback");
        LocationPlaceHelper.f51610a.n(activity, callback);
    }

    @Override // com.transsion.room.api.IRoomApi
    public c c(Context context, RoomsViewType type) {
        Intrinsics.h(context, "context");
        Intrinsics.h(type, "type");
        int i11 = C0762a.f62455a[type.ordinal()];
        if (i11 == 1) {
            return new RecommendRoomsView(context, null, 0, 6, null);
        }
        if (i11 == 2) {
            return new TrendingRoomsView(context, null, 0, 6, null);
        }
        if (i11 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        return new SubjectDetailRoomsView(context, null, 0, 6, null);
    }

    @Override // com.transsion.room.api.IRoomApi
    public String d() {
        return String.valueOf(Reflection.b(RoomDetailActivity.class).g());
    }

    @Override // com.transsion.room.api.IRoomApi
    public void e(double d11, double d12, Function1 callback) {
        Intrinsics.h(callback, "callback");
        LocationPlaceHelper.f51610a.p(d11, d12, callback);
    }

    @Override // com.transsion.room.api.IRoomApi
    public aq.a f(Fragment fragment) {
        Intrinsics.h(fragment, "fragment");
        return new e(fragment);
    }
}
