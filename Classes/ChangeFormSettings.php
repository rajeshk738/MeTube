<?php
class ChangeFormSettings {

    // public function createUserDetailsForm() {
    //     $email = $this->createEmailInput($emailId);
    //     $newemail = $this->createEmailInput($newemailId);
    //     $saveButton = $this->createSaveUserDetailsButton();

    //     return "<form action='pwdUpdate.php' method='POST' enctype='multipart/form-data'>
    //                 <span class='title'>Update Email</span>
    //                 $email
    //                 $newemail
    //                 $saveButton
    //             </form>";
    // }

    public function createPasswordForm() {
        $oldPasswordInput = $this->createPasswordInput("oldPassword", "Old password");
        $newPassword1Input = $this->createPasswordInput("newPassword", "New password");
        $newPassword2Input = $this->createPasswordInput("newPassword2", "Confirm new password");

        $saveButton = $this->createSavePasswordButton();

        return "<form action='pwdUpdate.php' method='POST' enctype='multipart/form-data'>
                    <span class='title'>Update password</span>
                    $oldPasswordInput
                    $newPassword1Input
                    $newPassword2Input
                    $saveButton
                </form>";
    }

    private function createFirstNameInput($value) {
        if($value == null) $value = "";
        return "<div class='form-group'>
                    <input class='form-control' type='text' placeholder='First name' name='firstName' value='$value' required>
                </div>";
    }

    private function createLastNameInput($value) {
        if($value == null) $value = "";
        return "<div class='form-group'>
                    <input class='form-control' type='text' placeholder='Last name' name='lastName' value='$value' required>
                </div>";
    }
    private function createUserNameInput($value){
        if($value == null) $value = "";
        return "<div class='form-group'>
                    <input class='form-control' type='text' placeholder='User name' name='userName' value='$value' required>
                </div>";
    }

    private function createEmailInput($value) {
        if($value == null) $value = "";
        return "<div class='form-group'>
                    <input class='form-control' type='email' placeholder='Email' name='email' value='$value' required>
                </div>";
    }

    private function createSaveUserDetailsButton() {
        return "<button type='submit' class='btn btn-primary' name='saveDetailsButton'>Save</button>";
    }

    private function createSavePasswordButton() {
        return "<button type='submit' class='btn btn-primary' name='savePasswordButton'>Save</button>";
    }

    private function createPasswordInput($name, $placeholder) {

        return "<div class='form-group'>
                    <input class='form-control' type='password' placeholder='$placeholder' name='$name' required>
                </div>";
    }
}