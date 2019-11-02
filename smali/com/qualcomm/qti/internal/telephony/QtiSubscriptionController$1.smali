.class Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController$1;
.super Landroid/os/Handler;
.source "QtiSubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    .line 630
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 633
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    const-string v1, "EVENT_CALL_ENDED"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->access$000(Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    .line 637
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->access$200(Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    const-string v1, "Current dds sub is inactive"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->access$000(Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->access$300()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->access$102(Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;I)I

    .line 641
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set DDS to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->access$000(Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->access$100(Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 643
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->access$400(Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 647
    :goto_0
    return-void
.end method
