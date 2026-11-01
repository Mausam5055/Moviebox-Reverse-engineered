.class public interface abstract Le/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a$b;,
        Le/a$a;
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$support$v4$app$INotificationSideChannel"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract K(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract T0(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
.end method

.method public abstract p0(Ljava/lang/String;)V
.end method
