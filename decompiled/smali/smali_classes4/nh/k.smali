.class public final synthetic Lnh/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnh/l;


# direct methods
.method public synthetic constructor <init>(Lnh/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnh/k;->a:Lnh/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnh/k;->a:Lnh/l;

    invoke-static {v0}, Lnh/l;->c(Lnh/l;)V

    return-void
.end method
