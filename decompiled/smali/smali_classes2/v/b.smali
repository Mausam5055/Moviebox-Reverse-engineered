.class public final Lv/b;
.super Lkotlin/collections/AbstractSet;

# interfaces
.implements Lt/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv/b$a;
    }
.end annotation


# static fields
.field public static final e:Lv/b$a;

.field public static final f:I

.field private static final g:Lv/b;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Lu/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lv/b;->e:Lv/b$a;

    const/16 v0, 0x8

    sput v0, Lv/b;->f:I

    new-instance v0, Lv/b;

    sget-object v1, Lw/c;->a:Lw/c;

    sget-object v2, Lu/d;->f:Lu/d$a;

    invoke-virtual {v2}, Lu/d$a;->a()Lu/d;

    move-result-object v2

    invoke-direct {v0, v1, v1, v2}, Lv/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lu/d;)V

    sput-object v0, Lv/b;->g:Lv/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lu/d;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/AbstractSet;-><init>()V

    iput-object p1, p0, Lv/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lv/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lv/b;->d:Lu/d;

    return-void
.end method

.method public static final synthetic e()Lv/b;
    .locals 1

    sget-object v0, Lv/b;->g:Lv/b;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lt/h;
    .locals 3

    iget-object v0, p0, Lv/b;->d:Lu/d;

    invoke-virtual {v0, p1}, Lu/d;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv/b;->d:Lu/d;

    new-instance v1, Lv/a;

    invoke-direct {v1}, Lv/a;-><init>()V

    invoke-virtual {v0, p1, v1}, Lu/d;->w(Ljava/lang/Object;Ljava/lang/Object;)Lu/d;

    move-result-object v0

    new-instance v1, Lv/b;

    invoke-direct {v1, p1, p1, v0}, Lv/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lu/d;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lv/b;->c:Ljava/lang/Object;

    iget-object v1, p0, Lv/b;->d:Lu/d;

    invoke-virtual {v1, v0}, Lu/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v1, Lv/a;

    iget-object v2, p0, Lv/b;->d:Lu/d;

    invoke-virtual {v1, p1}, Lv/a;->e(Ljava/lang/Object;)Lv/a;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lu/d;->w(Ljava/lang/Object;Ljava/lang/Object;)Lu/d;

    move-result-object v1

    new-instance v2, Lv/a;

    invoke-direct {v2, v0}, Lv/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Lu/d;->w(Ljava/lang/Object;Ljava/lang/Object;)Lu/d;

    move-result-object v0

    new-instance v1, Lv/b;

    iget-object v2, p0, Lv/b;->b:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, v0}, Lv/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lu/d;)V

    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lv/b;->d:Lu/d;

    invoke-virtual {v0, p1}, Lu/d;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lv/b;->d:Lu/d;

    invoke-virtual {v0}, Lkotlin/collections/AbstractMap;->size()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lv/c;

    iget-object v1, p0, Lv/b;->b:Ljava/lang/Object;

    iget-object v2, p0, Lv/b;->d:Lu/d;

    invoke-direct {v0, v1, v2}, Lv/c;-><init>(Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lt/h;
    .locals 4

    iget-object v0, p0, Lv/b;->d:Lu/d;

    invoke-virtual {v0, p1}, Lu/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/a;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lv/b;->d:Lu/d;

    invoke-virtual {v1, p1}, Lu/d;->x(Ljava/lang/Object;)Lu/d;

    move-result-object p1

    invoke-virtual {v0}, Lv/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lv/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v1, Lv/a;

    invoke-virtual {v0}, Lv/a;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lv/a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lv/a;->e(Ljava/lang/Object;)Lv/a;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lu/d;->w(Ljava/lang/Object;Ljava/lang/Object;)Lu/d;

    move-result-object p1

    :cond_1
    invoke-virtual {v0}, Lv/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lv/a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v1, Lv/a;

    invoke-virtual {v0}, Lv/a;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lv/a;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lv/a;->f(Ljava/lang/Object;)Lv/a;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lu/d;->w(Ljava/lang/Object;Ljava/lang/Object;)Lu/d;

    move-result-object p1

    :cond_2
    invoke-virtual {v0}, Lv/a;->b()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lv/a;->c()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lv/b;->b:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0}, Lv/a;->a()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lv/a;->d()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lv/b;->c:Ljava/lang/Object;

    :goto_1
    new-instance v2, Lv/b;

    invoke-direct {v2, v1, v0, p1}, Lv/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lu/d;)V

    return-object v2
.end method
