.class public final synthetic Lco/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lco/h;


# direct methods
.method public synthetic constructor <init>(Lco/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/e;->a:Lco/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lco/e;->a:Lco/h;

    invoke-static {v0}, Lco/h;->d(Lco/h;)V

    return-void
.end method
