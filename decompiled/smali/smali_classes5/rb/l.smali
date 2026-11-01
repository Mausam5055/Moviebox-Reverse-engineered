.class public final synthetic Lrb/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lrb/o;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lrb/o;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb/l;->a:Lrb/o;

    iput-object p2, p0, Lrb/l;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lrb/l;->a:Lrb/o;

    iget-object v1, p0, Lrb/l;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lrb/o;->b(Lrb/o;Ljava/util/List;)V

    return-void
.end method
