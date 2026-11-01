.class public final synthetic Lko/b0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lko/d0;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lko/d0;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lko/b0;->a:Lko/d0;

    iput-wide p2, p0, Lko/b0;->b:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lko/b0;->a:Lko/d0;

    iget-wide v1, p0, Lko/b0;->b:J

    invoke-static {v0, v1, v2}, Lko/d0;->l(Lko/d0;J)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
