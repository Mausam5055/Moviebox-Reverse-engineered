.class public final synthetic Lf3/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/f;


# instance fields
.field public final synthetic a:Lf3/h;


# direct methods
.method public synthetic constructor <init>(Lf3/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/e;->a:Lf3/h;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lf3/e;->a:Lf3/h;

    check-cast p1, Lf3/t;

    invoke-virtual {v0, p1}, Lf3/h;->t(Lf3/t;)Lf3/t;

    move-result-object p1

    return-object p1
.end method
