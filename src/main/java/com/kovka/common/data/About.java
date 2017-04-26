package com.kovka.common.data;

import com.kovka.common.data.FileData;
import com.kovka.common.data.SketchInfo;
import com.kovka.common.data.SketchProduct;
import com.kovka.common.data.lcp.Status;
import com.kovka.common.exception.DataParseException;
import com.kovka.common.util.Utils;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by Serozh on 4/12/2017.
 */
public class About {

    private Long id;

    private String coords;

    private String emailValues;
    private String phoneValues;

    private Set<String> emails;
    private Set<String> phones;

    private List<AboutInfo> infos;

    public Set<String> parseEmails() throws DataParseException {
        if (!Utils.isEmpty(this.emailValues)) {
            this.emails = new HashSet<String>();

            String[] ars = this.emailValues.split(",");

            try {
                for (String s : ars) {
                    if (!Utils.isEmpty(s.trim())) {
                        this.emails.add(s.trim());
                    }
                }
            } catch (Exception e) {
                throw new DataParseException(e);
            }


            return this.emails;
        }

        return null;
    }

    public Set<String> parsePhones() throws DataParseException {
        if (!Utils.isEmpty(this.phoneValues)) {
            this.phones = new HashSet<String>();

            String[] ars = this.phoneValues.split(",");

            try {
                for (String s : ars) {
                    if (!Utils.isEmpty(s.trim())) {
                        this.phones.add(s.trim());
                    }
                }
            } catch (Exception e) {
                throw new DataParseException(e);
            }


            return this.phones;
        }

        return null;
    }


    /*##################################################################################################################
     *                                  GETTERS & SETTERS
     *##################################################################################################################
     */

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCoords() {
        return coords;
    }

    public void setCoords(String coords) {
        this.coords = coords;
    }

    public String getEmailValues() {
        return emailValues;
    }

    public void setEmailValues(String emailValues) {
        this.emailValues = emailValues;
    }

    public String getPhoneValues() {
        return phoneValues;
    }

    public void setPhoneValues(String phoneValues) {
        this.phoneValues = phoneValues;
    }

    public Set<String> getEmails() {
        return emails;
    }

    public void setEmails(Set<String> emails) {
        this.emails = emails;
    }

    public Set<String> getPhones() {
        return phones;
    }

    public void setPhones(Set<String> phones) {
        this.phones = phones;
    }

    public List<AboutInfo> getInfos() {
        return infos;
    }

    public void setInfos(List<AboutInfo> infos) {
        this.infos = infos;
    }
}
