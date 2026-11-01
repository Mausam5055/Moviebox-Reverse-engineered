.class public interface abstract Lc/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a$b;,
        Lc/a$a;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$support$customtabs$ICustomTabsCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract B0(IILandroid/os/Bundle;)V
.end method

.method public abstract L(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract L0(ILandroid/os/Bundle;)V
.end method

.method public abstract P0(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract S0(Landroid/os/Bundle;)V
.end method

.method public abstract U0(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end method

.method public abstract r(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
