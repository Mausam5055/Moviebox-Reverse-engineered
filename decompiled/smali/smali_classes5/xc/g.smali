.class public final synthetic Lxc/g;
.super Ljava/lang/Object;

# interfaces
.implements Lmb/h;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lxc/h$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lxc/h$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxc/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lxc/g;->b:Lxc/h$a;

    return-void
.end method


# virtual methods
.method public final a(Lmb/e;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lxc/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lxc/g;->b:Lxc/h$a;

    invoke-static {v0, v1, p1}, Lxc/h;->a(Ljava/lang/String;Lxc/h$a;Lmb/e;)Lxc/f;

    move-result-object p1

    return-object p1
.end method
