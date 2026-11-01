.class public final synthetic Lyf/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lyf/b;


# direct methods
.method public synthetic constructor <init>(Lyf/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyf/a;->a:Lyf/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lyf/a;->a:Lyf/b;

    invoke-static {v0}, Lyf/b;->a(Lyf/b;)V

    return-void
.end method
