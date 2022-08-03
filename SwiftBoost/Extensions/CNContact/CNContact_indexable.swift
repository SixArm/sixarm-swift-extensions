import Contacts

extension CNContact {

    /// Get this contact's email address at a given index.
    ///
    /// If the contact has no email addresses,
    /// or the index is out of range, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let emailAddress: NSString? = contact.getEmailAddress(0)
    ///
    func getEmailAddress(index: Int) -> NSString? {
        if self.isKeyAvailable(CNContactEmailAddressesKey) {
            if index < self.emailAddresses.count {
                let x = self.emailAddresses[index]
                return Optional(x.value)
            }
        }
        return nil
    }

    /// Get this contact's email address at a given index as a String.
    ///
    /// If the contact has no email addresses,
    /// or the index is out of range, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let emailAddress: String? = contact.getEmailAddressAsString(0)
    ///
    func getEmailAddressAsString(index: Int) -> String? {
        return getEmailAddress(index: index) as? String
    }

    /// Get this contact's phone number at a given index.
    ///
    /// If the contact has no phone numbers,
    /// or the index is out of range, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let phoneNumber: CNPhoneNumber? = contact.getPhoneNumber(0)
    ///
    public func getPhoneNumber(index: Int) -> CNPhoneNumber? {
        if self.isKeyAvailable(CNContactPhoneNumbersKey) {
            if index < self.phoneNumbers.count {
                let x = self.phoneNumbers[index]
                return Optional(x.value)
            }
        }
        return nil
    }

    /// Get this contact's phone number at a given index as a String.
    ///
    /// If the contact has no phone numbers,
    /// or the index is out of range, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let phoneNumber: String? = contact.getPhoneNumberAsString(0)
    ///
    func getPhoneNumberAsString(index: Int) -> String? {
        return getPhoneNumberAsString(index: index)?.stringValue
    }

    /// Get this contact's social profile at a given index.
    ///
    /// If the contact has no social profiles,
    /// or the index is out of range, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let socialProfile: CNSocialProfile? = contact.getSocialProfile(0)
    ///
    public func getSocialProfile(index: Int) -> CNSocialProfile? {
        if self.isKeyAvailable(CNContactSocialProfilesKey) {
            if index < self.socialProfiles.count {
                let x = self.socialProfiles[index]
                return Optional(x.value)
            }
        }
        return nil
    }

    /// Get this contact's social profile at a given index as a URL String.
    ///
    /// If the contact has no social profiles,
    /// or the index is out of range, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let socialProfile: String? = contact.getSocialProfileAsURLString(0)
    ///
    public func getSocialProfileAsURLString(index: Int) -> String? {
        return getSocialProfile(index: index)?.urlString
    }

    /// Does this contact have any email address?
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let bool: Bool = contact.hasEmailAddress()
    ///
    public func hasEmailAddress() -> Bool {
        return self.isKeyAvailable(CNContactEmailAddressesKey)
            && self.emailAddresses.count > 0
    }

    /// Does this contact have any phone number?
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let bool: Bool = contact.hasPhoneNumber()
    ///
    public func hasPhoneNumber() -> Bool {
        return self.isKeyAvailable(CNContactPhoneNumbersKey)
            && self.phoneNumbers.count > 0
    }

    /// Does this contact have any social profile?
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let bool: Bool = contact.hasSocialProfile()
    ///
    public func hasSocialProfile() -> Bool {
        return self.isKeyAvailable(CNContactSocialProfilesKey)
            && self.socialProfiles.count > 0
    }

    /// Get this contact's primary email address (i.e. index 0).
    ///
    /// If the contact has no email address, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let emailAddress: NSString? = contact.primaryEmailAddress()
    ///
    func primaryEmailAddress() -> NSString? {
        return self.getEmailAddress(index: 0)
    }

    /// Get this contact's primary email address (i.e. index 0) as a String
    ///
    /// If the contact has no email address, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let emailAddress: String? = contact.primaryEmailAddress()
    ///
    func primaryEmailAddressAsString() -> String? {
        return self.getEmailAddressAsString(index: 0)
    }

    /// Get this contact's primary phone number (i.e. index 0).
    ///
    /// If the contact has no phone number, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let phoneNumber: CNPhoneNumber? = contact.primaryPhoneNumber()
    ///
    func primaryPhoneNumber() -> CNPhoneNumber? {
        return self.getPhoneNumber(index: 0)
    }
    
    /// Get this contact's primary phone number (i.e. index 0) as a String.
    ///
    /// If the contact has no phone number, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let phoneNumber: String? = contact.primaryPhoneNumber()
    ///
    func primaryPhoneNumberAsString() -> String? {
        return self.getPhoneNumberAsString(index: 0)
    }
    
    /// Get this contact's primary social profile (i.e. index 0).
    ///
    /// If the contact has no social profile, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let socialProfile: CNSocialProfile? = contact.primarySocialProfile()
    ///
    func primarySocialProfile() -> CNSocialProfile? {
        return self.getSocialProfile(index: 0)
    }

    /// Get this contact's primary social profile (i.e. index 0) as a URL String.
    ///
    /// If the contact has no social profile, then return nil.
    ///
    /// Example:
    ///
    ///     let contact: CNContact = …
    ///     let socialProfile: String? = contact.primarySocialProfile()
    ///
    func primarySocialProfileAsURLString() -> String? {
        return self.getSocialProfileAsURLString(index: 0)
    }

}
