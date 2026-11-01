.class public final synthetic Li4/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Li4/g;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Li4/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/f;->a:Ljava/util/List;

    iput-object p2, p0, Li4/f;->b:Li4/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Li4/f;->a:Ljava/util/List;

    iget-object v1, p0, Li4/f;->b:Li4/g;

    invoke-static {v0, v1}, Li4/g;->a(Ljava/util/List;Li4/g;)V

    return-void
.end method
