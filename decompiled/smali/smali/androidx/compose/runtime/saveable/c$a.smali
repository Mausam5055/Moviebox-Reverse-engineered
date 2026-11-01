.class public final Landroidx/compose/runtime/saveable/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/saveable/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/saveable/c;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/compose/runtime/saveable/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/saveable/c;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/saveable/c$a;->a:Landroidx/compose/runtime/saveable/c;

    iput-object p2, p0, Landroidx/compose/runtime/saveable/c$a;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/runtime/saveable/c$a;->c:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unregister()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/saveable/c$a;->a:Landroidx/compose/runtime/saveable/c;

    invoke-static {v0}, Landroidx/compose/runtime/saveable/c;->c(Landroidx/compose/runtime/saveable/c;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/saveable/c$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/saveable/c$a;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/saveable/c$a;->a:Landroidx/compose/runtime/saveable/c;

    invoke-static {v1}, Landroidx/compose/runtime/saveable/c;->c(Landroidx/compose/runtime/saveable/c;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/runtime/saveable/c$a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
