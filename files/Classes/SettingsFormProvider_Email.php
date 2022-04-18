<?php
class SettingsFormProvider_Email {

    public function createUserDetailsForm($emailId) {
        $emailInput = $this->createEmailInput($emailId);
        $saveButton = $this->createSaveUserDetailsButton();

        return "<form action='updateEmail.php' method='POST' enctype='multipart/form-data'>
                    <span class='title'>Update Email</span>
                    $emailInput
                    $saveButton
                </form>";
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


}
