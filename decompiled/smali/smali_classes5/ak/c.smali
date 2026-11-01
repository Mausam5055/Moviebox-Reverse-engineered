.class public final synthetic Lak/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/blankj/utilcode/util/Utils$b;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lak/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lak/c;->b:Ljava/lang/String;

    iput p3, p0, Lak/c;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lak/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lak/c;->b:Ljava/lang/String;

    iget v2, p0, Lak/c;->c:I

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl$a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    return-void
.end method
