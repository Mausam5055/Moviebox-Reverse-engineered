.class public final synthetic Landroidx/work/impl/utils/d0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/work/impl/utils/e0;

.field public final synthetic b:Ljava/util/UUID;

.field public final synthetic c:Landroidx/work/i;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/e0;Ljava/util/UUID;Landroidx/work/i;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/d0;->a:Landroidx/work/impl/utils/e0;

    iput-object p2, p0, Landroidx/work/impl/utils/d0;->b:Ljava/util/UUID;

    iput-object p3, p0, Landroidx/work/impl/utils/d0;->c:Landroidx/work/i;

    iput-object p4, p0, Landroidx/work/impl/utils/d0;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/utils/d0;->a:Landroidx/work/impl/utils/e0;

    iget-object v1, p0, Landroidx/work/impl/utils/d0;->b:Ljava/util/UUID;

    iget-object v2, p0, Landroidx/work/impl/utils/d0;->c:Landroidx/work/i;

    iget-object v3, p0, Landroidx/work/impl/utils/d0;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Landroidx/work/impl/utils/e0;->b(Landroidx/work/impl/utils/e0;Ljava/util/UUID;Landroidx/work/i;Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
