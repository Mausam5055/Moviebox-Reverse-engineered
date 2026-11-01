.class public final synthetic Lo9/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/f;


# instance fields
.field public final synthetic a:Lo9/g;


# direct methods
.method public synthetic constructor <init>(Lo9/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo9/f;->a:Lo9/g;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo9/f;->a:Lo9/g;

    check-cast p1, Lo9/o;

    invoke-virtual {v0, p1}, Lo9/g;->l(Lo9/o;)Lo9/o;

    move-result-object p1

    return-object p1
.end method
