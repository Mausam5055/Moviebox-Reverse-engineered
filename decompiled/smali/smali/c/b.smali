.class public interface abstract Lc/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b$b;,
        Lc/b$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$support$customtabs$ICustomTabsService"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/b;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract B(Lc/a;Landroid/os/Bundle;)Z
.end method

.method public abstract Q0(Lc/a;Landroid/os/IBinder;Landroid/os/Bundle;)Z
.end method

.method public abstract T(Lc/a;Landroid/net/Uri;ILandroid/os/Bundle;)Z
.end method

.method public abstract U(Lc/a;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
.end method

.method public abstract V0(Lc/a;Landroid/net/Uri;Landroid/os/Bundle;)Z
.end method

.method public abstract W(Lc/a;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract d(Lc/a;Landroid/os/Bundle;)Z
.end method

.method public abstract g(Lc/a;Landroid/os/Bundle;)Z
.end method

.method public abstract l0(Lc/a;ILandroid/net/Uri;Landroid/os/Bundle;)Z
.end method

.method public abstract q(Lc/a;)Z
.end method

.method public abstract t(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract w0(J)Z
.end method

.method public abstract x0(Lc/a;Landroid/net/Uri;)Z
.end method
