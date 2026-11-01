.class Lkotlin/collections/CollectionsKt__IteratorsJVMKt;
.super Lkotlin/collections/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/j;-><init>()V

    return-void
.end method

.method public static y(Ljava/util/Enumeration;)Ljava/util/Iterator;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/collections/CollectionsKt__IteratorsJVMKt$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt$iterator$1;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method
