.class public final Landroidx/fragment/app/strictmode/FragmentStrictMode$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/strictmode/FragmentStrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/strictmode/FragmentStrictMode$b$a;
    }
.end annotation


# static fields
.field public static final c:Landroidx/fragment/app/strictmode/FragmentStrictMode$b$a;

.field public static final d:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode$b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->c:Landroidx/fragment/app/strictmode/FragmentStrictMode$b$a;

    new-instance v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    invoke-static {}, Lkotlin/collections/SetsKt;->f()Ljava/util/Set;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;-><init>(Ljava/util/Set;Landroidx/fragment/app/strictmode/FragmentStrictMode$a;Ljava/util/Map;)V

    sput-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->d:Landroidx/fragment/app/strictmode/FragmentStrictMode$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Landroidx/fragment/app/strictmode/FragmentStrictMode$a;Ljava/util/Map;)V
    .locals 1

    const-string p2, "flags"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "allowedViolations"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->a:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final b()Landroidx/fragment/app/strictmode/FragmentStrictMode$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$b;->b:Ljava/util/Map;

    return-object v0
.end method
