.class public Landroidx/core/app/NotificationCompat$n;
.super Landroidx/core/app/NotificationCompat$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$n$c;,
        Landroidx/core/app/NotificationCompat$n$b;,
        Landroidx/core/app/NotificationCompat$n$d;,
        Landroidx/core/app/NotificationCompat$n$a;
    }
.end annotation


# instance fields
.field private e:I

.field private f:Landroidx/core/app/w;

.field private g:Landroid/app/PendingIntent;

.field private h:Landroid/app/PendingIntent;

.field private i:Landroid/app/PendingIntent;

.field private j:Z

.field private k:Ljava/lang/Integer;

.field private l:Ljava/lang/Integer;

.field private m:Landroidx/core/graphics/drawable/IconCompat;

.field private n:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$p;-><init>()V

    return-void
.end method

.method private r()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/core/app/NotificationCompat$n;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/core/R$string;->call_notification_screening_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/core/R$string;->call_notification_ongoing_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/core/R$string;->call_notification_incoming_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private s(Landroidx/core/app/NotificationCompat$b;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->c()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_action_priority"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private t(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$b;
    .locals 2

    if-nez p3, :cond_0

    iget-object p3, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object p3, p3, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-static {p3, p4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_0
    new-instance p4, Landroid/text/SpannableStringBuilder;

    invoke-direct {p4}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p4, p2, v1, p3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance p2, Landroidx/core/app/NotificationCompat$b$a;

    iget-object p3, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object p3, p3, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-static {p3, p1}, Landroidx/core/graphics/drawable/IconCompat;->j(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    invoke-direct {p2, p1, p4, p5}, Landroidx/core/app/NotificationCompat$b$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$b$a;->a()Landroidx/core/app/NotificationCompat$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->c()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "key_action_priority"

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

.method private u()Landroidx/core/app/NotificationCompat$b;
    .locals 8

    sget v0, Landroidx/core/R$drawable;->ic_call_answer_video:I

    sget v1, Landroidx/core/R$drawable;->ic_call_answer:I

    iget-object v7, p0, Landroidx/core/app/NotificationCompat$n;->g:Landroid/app/PendingIntent;

    if-nez v7, :cond_0

    const/4 v0, 0x0

    goto :goto_3

    :cond_0
    iget-boolean v2, p0, Landroidx/core/app/NotificationCompat$n;->j:Z

    if-eqz v2, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v2, :cond_2

    sget v0, Landroidx/core/R$string;->call_notification_answer_video_action:I

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_2
    sget v0, Landroidx/core/R$string;->call_notification_answer_action:I

    goto :goto_1

    :goto_2
    iget-object v5, p0, Landroidx/core/app/NotificationCompat$n;->k:Ljava/lang/Integer;

    sget v6, Landroidx/core/R$color;->call_notification_answer_color:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroidx/core/app/NotificationCompat$n;->t(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$b;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method private v()Landroidx/core/app/NotificationCompat$b;
    .locals 6

    sget v1, Landroidx/core/R$drawable;->ic_call_decline:I

    iget-object v5, p0, Landroidx/core/app/NotificationCompat$n;->h:Landroid/app/PendingIntent;

    if-nez v5, :cond_0

    sget v2, Landroidx/core/R$string;->call_notification_hang_up_action:I

    iget-object v3, p0, Landroidx/core/app/NotificationCompat$n;->l:Ljava/lang/Integer;

    sget v4, Landroidx/core/R$color;->call_notification_decline_color:I

    iget-object v5, p0, Landroidx/core/app/NotificationCompat$n;->i:Landroid/app/PendingIntent;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/core/app/NotificationCompat$n;->t(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$b;

    move-result-object v0

    return-object v0

    :cond_0
    sget v2, Landroidx/core/R$string;->call_notification_decline_action:I

    iget-object v3, p0, Landroidx/core/app/NotificationCompat$n;->l:Ljava/lang/Integer;

    sget v4, Landroidx/core/R$color;->call_notification_decline_color:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/core/app/NotificationCompat$n;->t(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/core/app/NotificationCompat$p;->a(Landroid/os/Bundle;)V

    const-string v0, "android.callType"

    iget v1, p0, Landroidx/core/app/NotificationCompat$n;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "android.callIsVideo"

    iget-boolean v1, p0, Landroidx/core/app/NotificationCompat$n;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$n;->f:Landroidx/core/app/w;

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroidx/core/app/w;->i()Landroid/app/Person;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$n$c;->b(Landroid/app/Person;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "android.callPerson"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.callPersonCompat"

    invoke-virtual {v0}, Landroidx/core/app/w;->j()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$n;->m:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->x(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$n$b;->a(Landroid/graphics/drawable/Icon;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "android.verificationIcon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    const-string v0, "android.verificationText"

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$n;->n:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "android.answerIntent"

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$n;->g:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "android.declineIntent"

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$n;->h:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "android.hangUpIntent"

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$n;->i:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$n;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const-string v1, "android.answerColor"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$n;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const-string v1, "android.declineColor"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public b(Landroidx/core/app/o;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-lt v0, v1, :cond_7

    iget v0, p0, Landroidx/core/app/NotificationCompat$n;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "NotifCompat"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized call type in CallStyle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/app/NotificationCompat$n;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$n;->f:Landroidx/core/app/w;

    invoke-virtual {v0}, Landroidx/core/app/w;->i()Landroid/app/Person;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$n;->i:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$n;->g:Landroid/app/PendingIntent;

    invoke-static {v0, v1, v2}, Landroidx/core/app/NotificationCompat$n$d;->c(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$n;->f:Landroidx/core/app/w;

    invoke-virtual {v0}, Landroidx/core/app/w;->i()Landroid/app/Person;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$n;->i:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Landroidx/core/app/NotificationCompat$n$d;->b(Landroid/app/Person;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$n;->f:Landroidx/core/app/w;

    invoke-virtual {v0}, Landroidx/core/app/w;->i()Landroid/app/Person;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$n;->h:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$n;->g:Landroid/app/PendingIntent;

    invoke-static {v0, v1, v2}, Landroidx/core/app/NotificationCompat$n$d;->a(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    move-result-object v2

    :cond_3
    :goto_0
    if-eqz v2, :cond_e

    invoke-interface {p1}, Landroidx/core/app/o;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {v2, p1}, Landroidx/core/app/q;->a(Landroid/app/Notification$CallStyle;Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroidx/core/app/NotificationCompat$n;->k:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v2, p1}, Landroidx/core/app/NotificationCompat$n$d;->d(Landroid/app/Notification$CallStyle;I)Landroid/app/Notification$CallStyle;

    :cond_4
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$n;->l:Ljava/lang/Integer;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v2, p1}, Landroidx/core/app/NotificationCompat$n$d;->e(Landroid/app/Notification$CallStyle;I)Landroid/app/Notification$CallStyle;

    :cond_5
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$n;->n:Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Landroidx/core/app/NotificationCompat$n$d;->h(Landroid/app/Notification$CallStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$CallStyle;

    iget-object p1, p0, Landroidx/core/app/NotificationCompat$n;->m:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p1, :cond_6

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/IconCompat;->x(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-static {v2, p1}, Landroidx/core/app/NotificationCompat$n$d;->g(Landroid/app/Notification$CallStyle;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$CallStyle;

    :cond_6
    iget-boolean p1, p0, Landroidx/core/app/NotificationCompat$n;->j:Z

    invoke-static {v2, p1}, Landroidx/core/app/NotificationCompat$n$d;->f(Landroid/app/Notification$CallStyle;Z)Landroid/app/Notification$CallStyle;

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Landroidx/core/app/o;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$n;->f:Landroidx/core/app/w;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/core/app/w;->d()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_8
    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$m;->E:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    const-string v3, "android.text"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$m;->E:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_9
    if-nez v2, :cond_a

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$n;->r()Ljava/lang/String;

    move-result-object v2

    :cond_a
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$n;->f:Landroidx/core/app/w;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroidx/core/app/w;->b()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$n;->f:Landroidx/core/app/w;

    invoke-virtual {v1}, Landroidx/core/app/w;->b()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->x(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/core/app/NotificationCompat$n$b;->b(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)V

    :cond_b
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$n;->f:Landroidx/core/app/w;

    invoke-virtual {v0}, Landroidx/core/app/w;->i()Landroid/app/Person;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/app/NotificationCompat$n$c;->a(Landroid/app/Notification$Builder;Landroid/app/Person;)Landroid/app/Notification$Builder;

    goto :goto_2

    :cond_c
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$n;->f:Landroidx/core/app/w;

    invoke-virtual {v0}, Landroidx/core/app/w;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/app/NotificationCompat$n$a;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_d
    :goto_2
    const-string v0, "call"

    invoke-static {p1, v0}, Landroidx/core/app/NotificationCompat$n$a;->b(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_e
    :goto_3
    return-void
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.core.app.NotificationCompat$CallStyle"

    return-object v0
.end method

.method public q()Ljava/util/ArrayList;
    .locals 7

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$n;->v()Landroidx/core/app/NotificationCompat$b;

    move-result-object v0

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$n;->u()Landroidx/core/app/NotificationCompat$b;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->b:Ljava/util/ArrayList;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/app/NotificationCompat$b;

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$b;->j()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5}, Landroidx/core/app/NotificationCompat$n;->s(Landroidx/core/app/NotificationCompat$b;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    if-le v4, v3, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    if-ne v4, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-lt v4, v3, :cond_5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v2
.end method
