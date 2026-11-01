.class public final Lcf/r0;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcf/d;

.field private b:Lcf/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcf/d;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcf/r0;->a:Lcf/d;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcf/r0;->a:Lcf/d;

    :cond_0
    iget-object v0, p0, Lcf/r0;->b:Lcf/d;

    if-eqz v0, :cond_1

    iput-object p1, v0, Lcf/d;->c:Lcf/e;

    :cond_1
    iput-object p1, p0, Lcf/r0;->b:Lcf/d;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcf/r0;->a:Lcf/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcf/e;->request()V

    :cond_0
    return-void
.end method
