package kotlin.collections.builders;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u001e\n\u0002\b\u0016\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\b\u0012\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0000\u0018\u0000 b*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\u00060\u0006j\u0002`\u0007:\u0003cdeB\u0011\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0014\u0010\u000bJ\u0017\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0016\u0010\u000bJ\u001b\u0010\u001a\u001a\u00020\u00192\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010 \u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0002¢\u0006\u0004\b \u0010!J-\u0010$\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"2\u0006\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00020\bH\u0002¢\u0006\u0004\b&\u0010'J\u001f\u0010*\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020\bH\u0002¢\u0006\u0004\b*\u0010\u001eJ5\u0010,\u001a\u00020\b2\u0006\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020\b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"2\u0006\u0010+\u001a\u00020\u0019H\u0002¢\u0006\u0004\b,\u0010-J\u0013\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0019H\u0016¢\u0006\u0004\b0\u00101J\u0018\u00103\u001a\u00028\u00002\u0006\u00102\u001a\u00020\bH\u0096\u0002¢\u0006\u0004\b3\u0010'J \u00104\u001a\u00028\u00002\u0006\u00102\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b4\u00105J\u0017\u00106\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b8\u00107J\u0016\u0010:\u001a\b\u0012\u0004\u0012\u00028\u000009H\u0096\u0002¢\u0006\u0004\b:\u0010;J\u0015\u0010=\u001a\b\u0012\u0004\u0012\u00028\u00000<H\u0016¢\u0006\u0004\b=\u0010>J\u001d\u0010=\u001a\b\u0012\u0004\u0012\u00028\u00000<2\u0006\u00102\u001a\u00020\bH\u0016¢\u0006\u0004\b=\u0010?J\u0017\u0010@\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b@\u0010AJ\u001f\u0010@\u001a\u00020\u000f2\u0006\u00102\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b@\u0010!J\u001d\u0010B\u001a\u00020\u00192\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bB\u0010CJ%\u0010B\u001a\u00020\u00192\u0006\u00102\u001a\u00020\b2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bB\u0010DJ\u000f\u0010E\u001a\u00020\u000fH\u0016¢\u0006\u0004\bE\u0010\u0011J\u0017\u0010F\u001a\u00028\u00002\u0006\u00102\u001a\u00020\bH\u0016¢\u0006\u0004\bF\u0010'J\u0017\u0010G\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0004\bG\u0010AJ\u001d\u0010H\u001a\u00020\u00192\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bH\u0010CJ\u001d\u0010I\u001a\u00020\u00192\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0016¢\u0006\u0004\bI\u0010CJ%\u0010L\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010J\u001a\u00020\b2\u0006\u0010K\u001a\u00020\bH\u0016¢\u0006\u0004\bL\u0010MJ)\u0010Q\u001a\b\u0012\u0004\u0012\u00028\u00010O\"\u0004\b\u0001\u0010N2\f\u0010P\u001a\b\u0012\u0004\u0012\u00028\u00010OH\u0016¢\u0006\u0004\bQ\u0010RJ\u0017\u0010Q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0OH\u0016¢\u0006\u0004\bQ\u0010SJ\u001a\u0010T\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\fH\u0096\u0002¢\u0006\u0004\bT\u0010AJ\u000f\u0010U\u001a\u00020\bH\u0016¢\u0006\u0004\bU\u0010VJ\u000f\u0010X\u001a\u00020WH\u0016¢\u0006\u0004\bX\u0010YR\u001c\u0010Z\u001a\b\u0012\u0004\u0012\u00028\u00000O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010\\\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0016\u0010^\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0014\u0010a\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b`\u0010V¨\u0006f"}, d2 = {"Lkotlin/collections/builders/ListBuilder;", "E", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/AbstractMutableList;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "initialCapacity", "<init>", "(I)V", "", "writeReplace", "()Ljava/lang/Object;", "", "registerModification", "()V", "checkIsMutable", "n", "ensureExtraCapacity", "minCapacity", "ensureCapacityInternal", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "contentEquals", "(Ljava/util/List;)Z", "i", "insertAtInternal", "(II)V", "element", "addAtInternal", "(ILjava/lang/Object;)V", "", "elements", "addAllInternal", "(ILjava/util/Collection;I)V", "removeAtInternal", "(I)Ljava/lang/Object;", "rangeOffset", "rangeLength", "removeRangeInternal", "retain", "retainOrRemoveAllInternal", "(IILjava/util/Collection;Z)I", "build", "()Ljava/util/List;", "isEmpty", "()Z", "index", "get", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "iterator", "()Ljava/util/Iterator;", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "add", "(Ljava/lang/Object;)Z", "addAll", "(Ljava/util/Collection;)Z", "(ILjava/util/Collection;)Z", "clear", "removeAt", "remove", "removeAll", "retainAll", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "T", "", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "()[Ljava/lang/Object;", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "backing", "[Ljava/lang/Object;", "length", "I", "isReadOnly", "Z", "getSize", "size", "Companion", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "BuilderSubList", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ListBuilder<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, Serializable, KMutableList {
    private static final a Companion = new a(null);
    private static final ListBuilder Empty;
    private E[] backing;
    private boolean isReadOnly;
    private int length;

    @Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u0016\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\b\u0019\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00010\u00052\u00060\u0006j\u0002`\u0007:\u0001aBC\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0000\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0019\u0010\u0017J\u001b\u0010\u001d\u001a\u00020\u001c2\n\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u001aH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010!\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0002¢\u0006\u0004\b!\u0010\"J-\u0010&\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\n2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#2\u0006\u0010%\u001a\u00020\nH\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00028\u00012\u0006\u0010\u001f\u001a\u00020\nH\u0002¢\u0006\u0004\b(\u0010)J\u001f\u0010,\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nH\u0002¢\u0006\u0004\b,\u0010-J5\u0010/\u001a\u00020\n2\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\n2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#2\u0006\u0010.\u001a\u00020\u001cH\u0002¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u001cH\u0016¢\u0006\u0004\b1\u00102J\u0018\u00104\u001a\u00028\u00012\u0006\u00103\u001a\u00020\nH\u0096\u0002¢\u0006\u0004\b4\u0010)J \u00105\u001a\u00028\u00012\u0006\u00103\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0096\u0002¢\u0006\u0004\b5\u00106J\u0017\u00107\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\b7\u00108J\u0017\u00109\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\b9\u00108J\u0016\u0010;\u001a\b\u0012\u0004\u0012\u00028\u00010:H\u0096\u0002¢\u0006\u0004\b;\u0010<J\u0015\u0010>\u001a\b\u0012\u0004\u0012\u00028\u00010=H\u0016¢\u0006\u0004\b>\u0010?J\u001d\u0010>\u001a\b\u0012\u0004\u0012\u00028\u00010=2\u0006\u00103\u001a\u00020\nH\u0016¢\u0006\u0004\b>\u0010@J\u0017\u0010A\u001a\u00020\u001c2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\bA\u0010BJ\u001f\u0010A\u001a\u00020\u00152\u0006\u00103\u001a\u00020\n2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\bA\u0010\"J\u001d\u0010C\u001a\u00020\u001c2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#H\u0016¢\u0006\u0004\bC\u0010DJ%\u0010C\u001a\u00020\u001c2\u0006\u00103\u001a\u00020\n2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#H\u0016¢\u0006\u0004\bC\u0010EJ\u000f\u0010F\u001a\u00020\u0015H\u0016¢\u0006\u0004\bF\u0010\u0017J\u0017\u0010G\u001a\u00028\u00012\u0006\u00103\u001a\u00020\nH\u0016¢\u0006\u0004\bG\u0010)J\u0017\u0010H\u001a\u00020\u001c2\u0006\u0010 \u001a\u00028\u0001H\u0016¢\u0006\u0004\bH\u0010BJ\u001d\u0010I\u001a\u00020\u001c2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#H\u0016¢\u0006\u0004\bI\u0010DJ\u001d\u0010J\u001a\u00020\u001c2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#H\u0016¢\u0006\u0004\bJ\u0010DJ%\u0010M\u001a\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010K\u001a\u00020\n2\u0006\u0010L\u001a\u00020\nH\u0016¢\u0006\u0004\bM\u0010NJ)\u0010Q\u001a\b\u0012\u0004\u0012\u00028\u00020\b\"\u0004\b\u0002\u0010O2\f\u0010P\u001a\b\u0012\u0004\u0012\u00028\u00020\bH\u0016¢\u0006\u0004\bQ\u0010RJ\u0017\u0010Q\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\bH\u0016¢\u0006\u0004\bQ\u0010SJ\u001a\u0010T\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0012H\u0096\u0002¢\u0006\u0004\bT\u0010BJ\u000f\u0010U\u001a\u00020\nH\u0016¢\u0006\u0004\bU\u0010VJ\u000f\u0010X\u001a\u00020WH\u0016¢\u0006\u0004\bX\u0010YR\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010ZR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010[R\u0016\u0010\f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010[R\u001c\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\\R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010]R\u0014\u0010^\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b^\u00102R\u0014\u0010`\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b_\u0010V¨\u0006b"}, d2 = {"Lkotlin/collections/builders/ListBuilder$BuilderSubList;", "E", "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/AbstractMutableList;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "backing", "", "offset", "length", "parent", "Lkotlin/collections/builders/ListBuilder;", "root", "<init>", "([Ljava/lang/Object;IILkotlin/collections/builders/ListBuilder$BuilderSubList;Lkotlin/collections/builders/ListBuilder;)V", "", "writeReplace", "()Ljava/lang/Object;", "", "registerModification", "()V", "checkForComodification", "checkIsMutable", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "contentEquals", "(Ljava/util/List;)Z", "i", "element", "addAtInternal", "(ILjava/lang/Object;)V", "", "elements", "n", "addAllInternal", "(ILjava/util/Collection;I)V", "removeAtInternal", "(I)Ljava/lang/Object;", "rangeOffset", "rangeLength", "removeRangeInternal", "(II)V", "retain", "retainOrRemoveAllInternal", "(IILjava/util/Collection;Z)I", "isEmpty", "()Z", "index", "get", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "iterator", "()Ljava/util/Iterator;", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "add", "(Ljava/lang/Object;)Z", "addAll", "(Ljava/util/Collection;)Z", "(ILjava/util/Collection;)Z", "clear", "removeAt", "remove", "removeAll", "retainAll", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "T", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "()[Ljava/lang/Object;", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "[Ljava/lang/Object;", "I", "Lkotlin/collections/builders/ListBuilder$BuilderSubList;", "Lkotlin/collections/builders/ListBuilder;", "isReadOnly", "getSize", "size", "a", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class BuilderSubList<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, Serializable, KMutableList {
        private E[] backing;
        private int length;
        private final int offset;
        private final BuilderSubList<E> parent;
        private final ListBuilder<E> root;

        private static final class a implements ListIterator, KMutableListIterator {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final BuilderSubList f67149a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private int f67150b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f67151c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f67152d;

            public a(BuilderSubList list, int i11) {
                Intrinsics.h(list, "list");
                this.f67149a = list;
                this.f67150b = i11;
                this.f67151c = -1;
                this.f67152d = ((AbstractList) list).modCount;
            }

            private final void a() {
                if (((AbstractList) this.f67149a.root).modCount != this.f67152d) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.ListIterator
            public void add(Object obj) {
                a();
                BuilderSubList builderSubList = this.f67149a;
                int i11 = this.f67150b;
                this.f67150b = i11 + 1;
                builderSubList.add(i11, obj);
                this.f67151c = -1;
                this.f67152d = ((AbstractList) this.f67149a).modCount;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public boolean hasNext() {
                return this.f67150b < this.f67149a.length;
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return this.f67150b > 0;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public Object next() {
                a();
                if (this.f67150b >= this.f67149a.length) {
                    throw new NoSuchElementException();
                }
                int i11 = this.f67150b;
                this.f67150b = i11 + 1;
                this.f67151c = i11;
                return this.f67149a.backing[this.f67149a.offset + this.f67151c];
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return this.f67150b;
            }

            @Override // java.util.ListIterator
            public Object previous() {
                a();
                int i11 = this.f67150b;
                if (i11 <= 0) {
                    throw new NoSuchElementException();
                }
                int i12 = i11 - 1;
                this.f67150b = i12;
                this.f67151c = i12;
                return this.f67149a.backing[this.f67149a.offset + this.f67151c];
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return this.f67150b - 1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public void remove() {
                a();
                int i11 = this.f67151c;
                if (i11 == -1) {
                    throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
                }
                this.f67149a.remove(i11);
                this.f67150b = this.f67151c;
                this.f67151c = -1;
                this.f67152d = ((AbstractList) this.f67149a).modCount;
            }

            @Override // java.util.ListIterator
            public void set(Object obj) {
                a();
                int i11 = this.f67151c;
                if (i11 == -1) {
                    throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
                }
                this.f67149a.set(i11, obj);
            }
        }

        public BuilderSubList(E[] backing, int i11, int i12, BuilderSubList<E> builderSubList, ListBuilder<E> root) {
            Intrinsics.h(backing, "backing");
            Intrinsics.h(root, "root");
            this.backing = backing;
            this.offset = i11;
            this.length = i12;
            this.parent = builderSubList;
            this.root = root;
            ((AbstractList) this).modCount = ((AbstractList) root).modCount;
        }

        private final void addAllInternal(int i11, Collection<? extends E> elements, int n11) {
            registerModification();
            BuilderSubList<E> builderSubList = this.parent;
            if (builderSubList != null) {
                builderSubList.addAllInternal(i11, elements, n11);
            } else {
                this.root.addAllInternal(i11, elements, n11);
            }
            this.backing = (E[]) ((ListBuilder) this.root).backing;
            this.length += n11;
        }

        private final void addAtInternal(int i11, E element) {
            registerModification();
            BuilderSubList<E> builderSubList = this.parent;
            if (builderSubList != null) {
                builderSubList.addAtInternal(i11, element);
            } else {
                this.root.addAtInternal(i11, element);
            }
            this.backing = (E[]) ((ListBuilder) this.root).backing;
            this.length++;
        }

        private final void checkForComodification() {
            if (((AbstractList) this.root).modCount != ((AbstractList) this).modCount) {
                throw new ConcurrentModificationException();
            }
        }

        private final void checkIsMutable() {
            if (isReadOnly()) {
                throw new UnsupportedOperationException();
            }
        }

        private final boolean contentEquals(List<?> other) {
            return ListBuilderKt.h(this.backing, this.offset, this.length, other);
        }

        private final boolean isReadOnly() {
            return ((ListBuilder) this.root).isReadOnly;
        }

        private final void registerModification() {
            ((AbstractList) this).modCount++;
        }

        private final E removeAtInternal(int i11) {
            registerModification();
            BuilderSubList<E> builderSubList = this.parent;
            E eRemoveAtInternal = builderSubList != null ? builderSubList.removeAtInternal(i11) : (E) this.root.removeAtInternal(i11);
            this.length--;
            return eRemoveAtInternal;
        }

        private final void removeRangeInternal(int rangeOffset, int rangeLength) {
            if (rangeLength > 0) {
                registerModification();
            }
            BuilderSubList<E> builderSubList = this.parent;
            if (builderSubList != null) {
                builderSubList.removeRangeInternal(rangeOffset, rangeLength);
            } else {
                this.root.removeRangeInternal(rangeOffset, rangeLength);
            }
            this.length -= rangeLength;
        }

        private final int retainOrRemoveAllInternal(int rangeOffset, int rangeLength, Collection<? extends E> elements, boolean retain) {
            BuilderSubList<E> builderSubList = this.parent;
            int iRetainOrRemoveAllInternal = builderSubList != null ? builderSubList.retainOrRemoveAllInternal(rangeOffset, rangeLength, elements, retain) : this.root.retainOrRemoveAllInternal(rangeOffset, rangeLength, elements, retain);
            if (iRetainOrRemoveAllInternal > 0) {
                registerModification();
            }
            this.length -= iRetainOrRemoveAllInternal;
            return iRetainOrRemoveAllInternal;
        }

        private final Object writeReplace() throws NotSerializableException {
            if (isReadOnly()) {
                return new SerializedCollection(this, 0);
            }
            throw new NotSerializableException("The list cannot be serialized while it is being built.");
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int index, E element) {
            checkIsMutable();
            checkForComodification();
            kotlin.collections.AbstractList.INSTANCE.c(index, this.length);
            addAtInternal(this.offset + index, element);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean add(E element) {
            checkIsMutable();
            checkForComodification();
            addAtInternal(this.offset + this.length, element);
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public boolean addAll(int index, Collection<? extends E> elements) {
            Intrinsics.h(elements, "elements");
            checkIsMutable();
            checkForComodification();
            kotlin.collections.AbstractList.INSTANCE.c(index, this.length);
            int size = elements.size();
            addAllInternal(this.offset + index, elements, size);
            return size > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean addAll(Collection<? extends E> elements) {
            Intrinsics.h(elements, "elements");
            checkIsMutable();
            checkForComodification();
            int size = elements.size();
            addAllInternal(this.offset + this.length, elements, size);
            return size > 0;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            checkIsMutable();
            checkForComodification();
            removeRangeInternal(this.offset, this.length);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object other) {
            checkForComodification();
            return other == this || ((other instanceof List) && contentEquals((List) other));
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int index) {
            checkForComodification();
            kotlin.collections.AbstractList.INSTANCE.b(index, this.length);
            return this.backing[this.offset + index];
        }

        @Override // kotlin.collections.AbstractMutableList
        public int getSize() {
            checkForComodification();
            return this.length;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            checkForComodification();
            return ListBuilderKt.i(this.backing, this.offset, this.length);
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object element) {
            checkForComodification();
            for (int i11 = 0; i11 < this.length; i11++) {
                if (Intrinsics.c(this.backing[this.offset + i11], element)) {
                    return i11;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            checkForComodification();
            return this.length == 0;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<E> iterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object element) {
            checkForComodification();
            for (int i11 = this.length - 1; i11 >= 0; i11--) {
                if (Intrinsics.c(this.backing[this.offset + i11], element)) {
                    return i11;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<E> listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<E> listIterator(int index) {
            checkForComodification();
            kotlin.collections.AbstractList.INSTANCE.c(index, this.length);
            return new a(this, index);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean remove(Object element) {
            checkIsMutable();
            checkForComodification();
            int iIndexOf = indexOf(element);
            if (iIndexOf >= 0) {
                remove(iIndexOf);
            }
            return iIndexOf >= 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean removeAll(Collection<?> elements) {
            Intrinsics.h(elements, "elements");
            checkIsMutable();
            checkForComodification();
            return retainOrRemoveAllInternal(this.offset, this.length, elements, false) > 0;
        }

        @Override // kotlin.collections.AbstractMutableList
        public E removeAt(int index) {
            checkIsMutable();
            checkForComodification();
            kotlin.collections.AbstractList.INSTANCE.b(index, this.length);
            return removeAtInternal(this.offset + index);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean retainAll(Collection<?> elements) {
            Intrinsics.h(elements, "elements");
            checkIsMutable();
            checkForComodification();
            return retainOrRemoveAllInternal(this.offset, this.length, elements, true) > 0;
        }

        @Override // java.util.AbstractList, java.util.List
        public E set(int index, E element) {
            checkIsMutable();
            checkForComodification();
            kotlin.collections.AbstractList.INSTANCE.b(index, this.length);
            E[] eArr = this.backing;
            int i11 = this.offset;
            E e11 = eArr[i11 + index];
            eArr[i11 + index] = element;
            return e11;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<E> subList(int fromIndex, int toIndex) {
            kotlin.collections.AbstractList.INSTANCE.d(fromIndex, toIndex, this.length);
            return new BuilderSubList(this.backing, this.offset + fromIndex, toIndex - fromIndex, this, this.root);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public Object[] toArray() {
            checkForComodification();
            E[] eArr = this.backing;
            int i11 = this.offset;
            return ArraysKt.t(eArr, i11, this.length + i11);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public <T> T[] toArray(T[] array) {
            Intrinsics.h(array, "array");
            checkForComodification();
            int length = array.length;
            int i11 = this.length;
            if (length >= i11) {
                E[] eArr = this.backing;
                int i12 = this.offset;
                ArraysKt.n(eArr, array, 0, i12, i11 + i12);
                return (T[]) CollectionsKt.g(this.length, array);
            }
            E[] eArr2 = this.backing;
            int i13 = this.offset;
            T[] tArr = (T[]) Arrays.copyOfRange(eArr2, i13, i11 + i13, array.getClass());
            Intrinsics.g(tArr, "copyOfRange(...)");
            return tArr;
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            checkForComodification();
            return ListBuilderKt.j(this.backing, this.offset, this.length, this);
        }
    }

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private static final class b implements ListIterator, KMutableListIterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ListBuilder f67153a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f67154b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f67155c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f67156d;

        public b(ListBuilder list, int i11) {
            Intrinsics.h(list, "list");
            this.f67153a = list;
            this.f67154b = i11;
            this.f67155c = -1;
            this.f67156d = ((AbstractList) list).modCount;
        }

        private final void a() {
            if (((AbstractList) this.f67153a).modCount != this.f67156d) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            a();
            ListBuilder listBuilder = this.f67153a;
            int i11 = this.f67154b;
            this.f67154b = i11 + 1;
            listBuilder.add(i11, obj);
            this.f67155c = -1;
            this.f67156d = ((AbstractList) this.f67153a).modCount;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f67154b < this.f67153a.length;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f67154b > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            a();
            if (this.f67154b >= this.f67153a.length) {
                throw new NoSuchElementException();
            }
            int i11 = this.f67154b;
            this.f67154b = i11 + 1;
            this.f67155c = i11;
            return this.f67153a.backing[this.f67155c];
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f67154b;
        }

        @Override // java.util.ListIterator
        public Object previous() {
            a();
            int i11 = this.f67154b;
            if (i11 <= 0) {
                throw new NoSuchElementException();
            }
            int i12 = i11 - 1;
            this.f67154b = i12;
            this.f67155c = i12;
            return this.f67153a.backing[this.f67155c];
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f67154b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            a();
            int i11 = this.f67155c;
            if (i11 == -1) {
                throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
            }
            this.f67153a.remove(i11);
            this.f67154b = this.f67155c;
            this.f67155c = -1;
            this.f67156d = ((AbstractList) this.f67153a).modCount;
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            a();
            int i11 = this.f67155c;
            if (i11 == -1) {
                throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
            }
            this.f67153a.set(i11, obj);
        }
    }

    static {
        ListBuilder listBuilder = new ListBuilder(0);
        listBuilder.isReadOnly = true;
        Empty = listBuilder;
    }

    public ListBuilder() {
        this(0, 1, null);
    }

    public ListBuilder(int i11) {
        this.backing = (E[]) ListBuilderKt.d(i11);
    }

    public /* synthetic */ ListBuilder(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 10 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addAllInternal(int i11, Collection<? extends E> elements, int n11) {
        registerModification();
        insertAtInternal(i11, n11);
        Iterator<? extends E> it = elements.iterator();
        for (int i12 = 0; i12 < n11; i12++) {
            this.backing[i11 + i12] = it.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addAtInternal(int i11, E element) {
        registerModification();
        insertAtInternal(i11, 1);
        this.backing[i11] = element;
    }

    private final void checkIsMutable() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    private final boolean contentEquals(List<?> other) {
        return ListBuilderKt.h(this.backing, 0, this.length, other);
    }

    private final void ensureCapacityInternal(int minCapacity) {
        if (minCapacity < 0) {
            throw new OutOfMemoryError();
        }
        E[] eArr = this.backing;
        if (minCapacity > eArr.length) {
            this.backing = (E[]) ListBuilderKt.e(this.backing, kotlin.collections.AbstractList.INSTANCE.e(eArr.length, minCapacity));
        }
    }

    private final void ensureExtraCapacity(int n11) {
        ensureCapacityInternal(this.length + n11);
    }

    private final void insertAtInternal(int i11, int n11) {
        ensureExtraCapacity(n11);
        E[] eArr = this.backing;
        ArraysKt.n(eArr, eArr, i11 + n11, i11, this.length);
        this.length += n11;
    }

    private final void registerModification() {
        ((AbstractList) this).modCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final E removeAtInternal(int i11) {
        registerModification();
        E[] eArr = this.backing;
        E e11 = eArr[i11];
        ArraysKt.n(eArr, eArr, i11, i11 + 1, this.length);
        ListBuilderKt.f(this.backing, this.length - 1);
        this.length--;
        return e11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeRangeInternal(int rangeOffset, int rangeLength) {
        if (rangeLength > 0) {
            registerModification();
        }
        E[] eArr = this.backing;
        ArraysKt.n(eArr, eArr, rangeOffset, rangeOffset + rangeLength, this.length);
        E[] eArr2 = this.backing;
        int i11 = this.length;
        ListBuilderKt.g(eArr2, i11 - rangeLength, i11);
        this.length -= rangeLength;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int retainOrRemoveAllInternal(int rangeOffset, int rangeLength, Collection<? extends E> elements, boolean retain) {
        int i11 = 0;
        int i12 = 0;
        while (i11 < rangeLength) {
            int i13 = rangeOffset + i11;
            if (elements.contains(this.backing[i13]) == retain) {
                E[] eArr = this.backing;
                i11++;
                eArr[i12 + rangeOffset] = eArr[i13];
                i12++;
            } else {
                i11++;
            }
        }
        int i14 = rangeLength - i12;
        E[] eArr2 = this.backing;
        ArraysKt.n(eArr2, eArr2, rangeOffset + i12, rangeLength + rangeOffset, this.length);
        E[] eArr3 = this.backing;
        int i15 = this.length;
        ListBuilderKt.g(eArr3, i15 - i14, i15);
        if (i14 > 0) {
            registerModification();
        }
        this.length -= i14;
        return i14;
    }

    private final Object writeReplace() throws NotSerializableException {
        if (this.isReadOnly) {
            return new SerializedCollection(this, 0);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int index, E element) {
        checkIsMutable();
        kotlin.collections.AbstractList.INSTANCE.c(index, this.length);
        addAtInternal(index, element);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E element) {
        checkIsMutable();
        addAtInternal(this.length, element);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, Collection<? extends E> elements) {
        Intrinsics.h(elements, "elements");
        checkIsMutable();
        kotlin.collections.AbstractList.INSTANCE.c(index, this.length);
        int size = elements.size();
        addAllInternal(index, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> elements) {
        Intrinsics.h(elements, "elements");
        checkIsMutable();
        int size = elements.size();
        addAllInternal(this.length, elements, size);
        return size > 0;
    }

    public final List<E> build() {
        checkIsMutable();
        this.isReadOnly = true;
        return this.length > 0 ? this : Empty;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        checkIsMutable();
        removeRangeInternal(0, this.length);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object other) {
        return other == this || ((other instanceof List) && contentEquals((List) other));
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int index) {
        kotlin.collections.AbstractList.INSTANCE.b(index, this.length);
        return this.backing[index];
    }

    @Override // kotlin.collections.AbstractMutableList
    public int getSize() {
        return this.length;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        return ListBuilderKt.i(this.backing, 0, this.length);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        for (int i11 = 0; i11 < this.length; i11++) {
            if (Intrinsics.c(this.backing[i11], element)) {
                return i11;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.length == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object element) {
        for (int i11 = this.length - 1; i11 >= 0; i11--) {
            if (Intrinsics.c(this.backing[i11], element)) {
                return i11;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int index) {
        kotlin.collections.AbstractList.INSTANCE.c(index, this.length);
        return new b(this, index);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object element) {
        checkIsMutable();
        int iIndexOf = indexOf(element);
        if (iIndexOf >= 0) {
            remove(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> elements) {
        Intrinsics.h(elements, "elements");
        checkIsMutable();
        return retainOrRemoveAllInternal(0, this.length, elements, false) > 0;
    }

    @Override // kotlin.collections.AbstractMutableList
    public E removeAt(int index) {
        checkIsMutable();
        kotlin.collections.AbstractList.INSTANCE.b(index, this.length);
        return removeAtInternal(index);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<?> elements) {
        Intrinsics.h(elements, "elements");
        checkIsMutable();
        return retainOrRemoveAllInternal(0, this.length, elements, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int index, E element) {
        checkIsMutable();
        kotlin.collections.AbstractList.INSTANCE.b(index, this.length);
        E[] eArr = this.backing;
        E e11 = eArr[index];
        eArr[index] = element;
        return e11;
    }

    @Override // java.util.AbstractList, java.util.List
    public List<E> subList(int fromIndex, int toIndex) {
        kotlin.collections.AbstractList.INSTANCE.d(fromIndex, toIndex, this.length);
        return new BuilderSubList(this.backing, fromIndex, toIndex - fromIndex, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return ArraysKt.t(this.backing, 0, this.length);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] array) {
        Intrinsics.h(array, "array");
        int length = array.length;
        int i11 = this.length;
        if (length >= i11) {
            ArraysKt.n(this.backing, array, 0, 0, i11);
            return (T[]) CollectionsKt.g(this.length, array);
        }
        T[] tArr = (T[]) Arrays.copyOfRange(this.backing, 0, i11, array.getClass());
        Intrinsics.g(tArr, "copyOfRange(...)");
        return tArr;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return ListBuilderKt.j(this.backing, 0, this.length, this);
    }
}
