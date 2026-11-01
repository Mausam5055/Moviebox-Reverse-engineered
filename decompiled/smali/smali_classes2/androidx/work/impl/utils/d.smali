.class public final synthetic Landroidx/work/impl/utils/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/f1;

.field public final synthetic b:Ljava/util/UUID;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/f1;Ljava/util/UUID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/d;->a:Landroidx/work/impl/f1;

    iput-object p2, p0, Landroidx/work/impl/utils/d;->b:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/utils/d;->a:Landroidx/work/impl/f1;

    iget-object v1, p0, Landroidx/work/impl/utils/d;->b:Ljava/util/UUID;

    invoke-static {v0, v1}, Landroidx/work/impl/utils/e;->c(Landroidx/work/impl/f1;Ljava/util/UUID;)V

    return-void
.end method
