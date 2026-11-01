.class public interface abstract Ld/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b$b;,
        Ld/b$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$support$customtabs$trusted$ITrustedWebActivityService"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld/b;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract C0()I
.end method

.method public abstract D0(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract G()Landroid/os/Bundle;
.end method

.method public abstract H0(Landroid/os/Bundle;)V
.end method

.method public abstract P(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract k0()Landroid/os/Bundle;
.end method

.method public abstract z(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;)Landroid/os/Bundle;
.end method
